{ inputs.utils.url = "github:ursi/flake-utils";

  outputs = { nixpkgs, utils, ... }:
    { __functor = _: { system, pkgs ? nixpkgs.legacyPackages.${system}}:
        rec
        { inherit (import ./build-pkgs.nix pkgs) ps-pkgs ps-pkgs-ns;

          purs =
            { dependencies ? []
            , test-dependencies ? []
            , src
            , nodejs ? pkgs.nodejs
            , purescript ? pkgs.purescript
            }:
            let
              l = p.lib; p = pkgs; u = import ./utils.nix;
              inherit (p.stdenv) mkDerivation;

              get-dep-globs = deps:
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
                    l.unique (go deps);
                in
                toString
                  (builtins.map
                     (a: ''"${a}/**/*.purs"'')
                     trans-deps
                  );

              dep-globs = get-dep-globs dependencies;
              all-dep-globs = get-dep-globs (dependencies ++ test-dependencies);

              build-single = name: local-deps:
                let
                  built-deps =
                    mkDerivation
                      { name = "built-deps";
                        phases = [ "buildPhase" "installPhase" ];
                        nativeBuildInputs = [ purescript ];
                        buildPhase ="purs compile ${dep-globs}";
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

                  output = args:
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

                        buildPhase =
                          let
                            augmentations =
                              toString
                                (builtins.map
                                   (a: "${a.bin} output;")
                                   trans-deps
                                );

                            local-dep-globs =
                              toString
                                (builtins.map
                                  (a: ''"${a.src}/**/*.purs"'')
                                  trans-deps
                                );
                          in
                          ''
                          cp --no-preserve=mode --preserve=timestamps -r ${built-deps} output
                          ${augmentations}

                          ${u.compile
                              purescript
                              (args
                               // { globs = ''"${src'}/**/*.purs" ${local-dep-globs} ${dep-globs}'';
                                    output = "output";
                                  }
                              )
                          }
                          '';

                        installPhase = "mv output $out";
                      };

                  bundle = { main ? true, namespace ? null }:
                    p.runCommand "${name}-bundle" {}
                      (u.bundle
                         purescript
                         { files = output {};
                           module = name;
                           main = if main then name else null;
                           inherit namespace;
                           output = "$out";
                         }
                      );

                  install =
                    { name
                    , version ? null
                    , command ? name
                    , auto-flags ? true
                    }:
                    let
                      exe =
                        let
                          partial = "node ${bundle {}} $@";
                        in
                        pkgs.writeShellScript command
                          (if auto-flags then
                             ''
                             if [[ $1 = --version ]]; then
                               echo ${if version == null then "none" else version}
                             else
                               ${partial}
                             fi
                             ''
                           else
                             partial
                          );
                    in
                    mkDerivation
                      ({ phases = [ "installPhase" ];
                         buildInputs = [ p.makeWrapper nodejs ];

                         installPhase =
                           ''
                           mkdir -p $out/bin
                           makeWrapper ${exe} $out/bin/${command} --set PATH $PATH
                           '';
                       }
                       // u.make-name name version
                      );
                in
                { inherit bundle local-deps install name output;
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
                        cp --no-preserve=mode --preserve=timestamps -r ${output {}}/${name} $1/${name}
                        ${merge-cache} ${output {}}/cache-db.json $1/cache-db.json $1/cache-db.json
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
                                "purs graph ${extra} ${dep-globs} > $out"
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
            { modules =
                l.mapAttrs
                  (_: v: { inherit (v) bundle output install; })
                  builds;

              shell =
                import ./purs-nix-shell.nix
                  { all-dependencies = dependencies ++ test-dependencies;
                    inherit all-dep-globs dep-globs pkgs;
                  };
            };
        };
    }
    // utils.defaultSystems
         ({ pkgs, system }:
            let
              l = p.lib; p = pkgs; u = import ./utils.nix;
              inherit (import ./build-pkgs.nix pkgs) ps-pkgs ps-pkgs-ns;
            in
            { apps =
                { package-info =
                    l.mapAttrs
                      (n: v:
                         { type = "app";
                           program = "${p.writeScript "package-info-${v.name}" (u.package-info v)}";
                         }
                      )
                      ps-pkgs;

                  package-info-ns =
                    l.mapAttrs
                      (ns: pkgs':
                         l.mapAttrs
                           (n: v:
                             { type = "app";
                               program = "${p.writeScript "package-info-${v.name}" (u.package-info v)}";
                             }
                           )
                           pkgs'
                      )
                      ps-pkgs-ns;
                };

              defaultApp =
                { type = "app";

                  program =
                    let
                      write-flake =
                        p.writeScript "initialize-project"
                          ''
                          if [[ ! -a .gitignore ]]; then
                            cp --no-preserve=mode ${./init/.gitignore} .gitignore
                          fi

                          if [[ ! -a flake.nix ]]; then
                            cp --no-preserve=mode ${./init/flake.nix} flake.nix
                          fi

                          if [[ ! -a src ]]; then
                            mkdir src
                          fi

                          if [[ ! -a src/Main.purs ]]; then
                            cp --no-preserve=mode ${./init/Main.purs} src/Main.purs
                          fi
                          '';
                    in
                      "${write-flake}";
                };
            }
         )
         nixpkgs;
}
