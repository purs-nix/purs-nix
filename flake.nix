{ inputs.utils.url = "github:ursi/flake-utils";

  outputs = { self, nixpkgs, utils }:
    { __functor = _:
      { deps
      , lib
      , src
      , system ? "x86_64-linux"
      , pkgs ? nixpkgs.legacyPackages.${system}
      , purescript ? pkgs.purescript
      }:
      let
        l = lib; p = pkgs;
        inherit (p.stdenv) mkDerivation;

        build-single = name: local-deps:
          let
            deps-srcs =
              toString
                (builtins.map
                   (a: ''"${a}/src/**/*.purs"'')
                   (builtins.attrValues deps)
                );

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
              p.runCommand "purescript-bundle"
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
                          ''
                          purs graph ${extra} ${
                          toString
                            (l.mapAttrsToList
                               (k: v:
                                 "\"" + toString(v) + "/**/*.purs\""
                               )
                               deps
                            )
                          } > $out
                          ''
                       )
                    );

                deps-graph = make-graph "";
                graph = make-graph "${src}/*.purs ${src}/**/*.purs";

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
      in
      builds;
    };
}
