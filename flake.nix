{ inputs.utils.url = "github:ursi/flake-utils";

  outputs = { nixpkgs, utils, ... }:
    { __functor = _: { system, pkgs ? nixpkgs.legacyPackages.${system}}:
        { inherit (import ./build-pkgs.nix pkgs) ps-pkgs ps-pkgs-ns;

          purs =
            { dependencies ? []
            , src
            , purescript ? pkgs.purescript
            }:
            let
              l = p.lib; p = pkgs;
              inherit (p.stdenv) mkDerivation;

              deps-srcs =
                let
                  trans-deps =
                    let
                      go = ds:
                        builtins.foldl'
                          (acc: d:
                             acc ++ go d.dependencies
                          )
                          []
                          ds
                        ++ ds;
                    in
                    l.unique (go dependencies);
                in
                toString
                  (builtins.map
                     (a: ''"${a}/**/*.purs"'')
                     trans-deps
                  );

              build-single = name: local-deps:
                let
                  built-deps =
                    mkDerivation
                      { name = "built-deps";
                        phases = [ "buildPhase" "installPhase" ];
                        nativeBuildInputs = [ purescript ];
                        buildPhase ="purs compile ${deps-srcs}";
                        installPhase = "mv output $out";
                      };

                  src' =
                    let
                      paths =
                        builtins.filter
                          (a: path-filter (toString a))
                          (l.filesystem.listFilesRecursive src);

                      path-suffix-prefix = (builtins.replaceStrings [ "." ] [ "/" ] name) + ".";

                      subsrc =
                        let
                          match =
                            builtins.match
                              "(.*)/[^/]+$"
                              path-suffix-prefix;
                        in
                        if match == null then
                          src
                        else
                          src + ("/" + builtins.head match);

                      path-filter = path:
                        let
                          js = path-suffix-prefix + "js";
                          purs = path-suffix-prefix + "purs";
                        in
                        l.hasSuffix js path || l.hasSuffix purs path;
                    in
                    builtins.filterSource
                      (path: _: path-filter path)
                      subsrc;

                  output =
                    let
                      trans-deps =
                        let
                          go = ds:
                            builtins.foldl'
                              (acc: d:
                                 acc ++ go d.local-deps
                              )
                              []
                              ds
                            ++ ds;
                        in
                        l.unique (go local-deps);
                    in
                    mkDerivation
                      { inherit name;
                        phases = [ "buildPhase" "installPhase" ];
                        nativeBuildInputs = [ purescript ];

                        buildPhase =
                          let
                            augmentations =
                              toString
                                (builtins.map
                                   (a: "${a.bin} output;")
                                   trans-deps
                                );

                            local-deps-srcs =
                              toString
                                (builtins.map
                                  (a: ''"${a.src}/**/*.purs"'')
                                  trans-deps
                                );
                          in
                          ''
                          cp --no-preserve=mode --preserve=timestamps -r ${built-deps} output
                          ${augmentations}
                          purs compile "${src'}/**/*.purs" ${local-deps-srcs} ${deps-srcs}
                          '';

                        installPhase = "mv output $out";
                      };

                  bundle = { main ? true, namespace ? null }:
                    p.runCommand "${name}-bundle"
                      { buildInputs = [ purescript ]; }
                      ''purs bundle "${output}/**/*.js" -m ${name} ${
                      if main then "--main ${name}" else ""
                      } ${
                      if namespace == null then ""
                      else "-n ${namespace}"
                      } -o $out'';
                in
                { inherit bundle local-deps name output;
                  src = src';

                  bin =
                    let
                      merge-cache =
                        (utils.builders system).write-js-script
                          "merge-cache"
                          ''
                          const fs = require(`fs`);

                          const [c1Path, c2Path, outPath] = process.argv.slice(2);

                          c1 = JSON.parse(fs.readFileSync(c1Path));
                          c2 = JSON.parse(fs.readFileSync(c2Path));

                          fs.writeFileSync(outPath, JSON.stringify({...c1, ...c2}));
                          '';

                      exe = p.writeShellScript "exe"
                        ''
                        cp --no-preserve=mode --preserve=timestamps -r ${output}/${name} $1/${name}
                        ${merge-cache} ${output}/cache-db.json $1/cache-db.json $1/cache-db.json
                        '';
                    in
                    p.runCommand name
                      { buildInputs = [ p.makeWrapper ]; }
                      "makeWrapper ${exe} $out --set PATH $PATH";
                };

              builds =
                let
                  local-graph =
                    let
                      make-graph = extra:
                        builtins.fromJSON
                          (builtins.readFile
                             (p.runCommand "purescript-dependency-graph"
                                { buildInputs = [ purescript ]; }
                                "purs graph ${extra} ${deps-srcs} > $out"
                             )
                          );

                      deps-graph = make-graph "";
                      graph = make-graph ''"${src}/**/*.purs"'';

                      partial =
                        l.filterAttrs
                          (n: v: !deps-graph?${n})
                          graph;
                    in
                    l.mapAttrs
                      (module: v:
                         { depends =
                             builtins.filter
                               (v: partial?${v})
                               v.depends;
                         }
                      )
                      partial;
                in
                l.mapAttrs
                  (name: v:
                     build-single
                       name
                       (builtins.map (v: builds.${v}) v.depends)
                  )
                  local-graph;

              make-flag = flag: arg:
                if arg == null || arg == false then
                  ""
                else if arg == true then
                  flag
                else
                  flag + arg;
            in
            { bundle =
                { src ? "src"
                , compiler-output ? "output"
                , module ? "Main"
                , output ? "index.js"
                , main ? module
                , namespace ? null
                , source-maps ? false
                , debug ? false
                }:
                let
                  flags =
                    builtins.concatStringsSep " "
                      [ "--module ${module}"
                        (make-flag "--output " output)
                        (make-flag "--main " main)
                        (make-flag "--namespace " namespace)
                        (make-flag "--source-maps" source-maps)
                        (make-flag "debug" debug)
                      ];
                in
                { type = "app";

                  program =
                    toString
                      (p.writeShellScript "purs-bundle"
                         ''
                         if [[ ! -e ${compiler-output} ]]; then
                           nix run .#compile \
                             || echo "there is no '${compiler-output}' directory with the compiler output and 'nix run .#compile' failed. Try adding a 'compile' app to your flake and running the command again."
                         fi

                         ${p.purescript}/bin/purs bundle ${flags} "${compiler-output}/**/*.js"
                         ''
                      );
                };

              compile =
                { src ? "src"
                , output ? null
                , verbose-errors ? false
                , comments ? false
                , codegen ? null
                , no-prefix ? false
                , json-errors ? false
                }:
                let
                  flags =
                    builtins.concatStringsSep " "
                      [ (make-flag "--output " output)
                        (make-flag "--verbose-errors" verbose-errors)
                        (make-flag "--comments" comments)
                        (make-flag "--codegen " codegen)
                        (make-flag "--no-prefix" no-prefix)
                        (make-flag "--json-errors" no-prefix)
                      ];
                in
                { type = "app";

                  program =
                    toString
                      (p.writeShellScript "purs-compile"
                         ''${p.purescript}/bin/purs compile ${flags} "${src}/**/*.purs" ${deps-srcs}''
                      );
                };

              modules =
                l.mapAttrs
                  (_: v: { inherit (v) bundle output; })
                  builds;
            };
        };
    };
}
