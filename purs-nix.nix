with builtins;
{ docs-search, overlays, pkgs, ps-tools }:
  let
    l = p.lib; p = pkgs; u = import ./utils.nix p;
    # parser = import ./parser.nix { inherit l parsec; };
    purescript' = ps-tools.for-0_15.purescript;

    ps-package-stuff =
      import ./build-pkgs.nix
        { inherit overlays pkgs; utils = u; };
  in
  { inherit (ps-package-stuff) build build-set ps-pkgs ps-pkgs-ns;
    inherit (pkgs) esbuild;
    inherit (pkgs.lib) licenses;
    purescript = purescript';

    purs =
      { nodejs ? pkgs.nodejs
      , purescript ? purescript'
      , foreign ? null
      , ...
      }@args:
      let
        inherit (p.stdenv) mkDerivation;

        srcs =
          if args?dir then
            map (s: args.dir + "/${s}") (args.srcs or [ "src" ])
          else
            args.srcs
            or (throw
                  ''
                  In order to build derivations from your PureScript code, you must supply a 'dir' or 'srcs' argument to 'purs'

                  See:
                  https://github.com/purs-nix/purs-nix/blob/ps-0.15/docs/purs-nix.md#purs
                  ''
               );

        test-src =
          if args?dir then
             args.dir + "/${args.test or "test"}"
          else
            args.test
            or (throw
                  ''
                  In order to build derivations from your PureScript code, you must supply a 'dir' or 'test' argument to 'purs'

                  See:
                  https://github.com/purs-nix/purs-nix/blob/ps-0.15/docs/purs-nix.md#purs
                  ''
               );

        test-module = args.test-module or "Test.Main";

        create-closure = deps:
          let
            f = direct:
              foldl'
                (acc: dep:
                   let inherit (dep.purs-nix-info) name; in
                   if direct || !acc?${name} then
                     f false
                       (acc // { ${name} = dep; })
                       dep.purs-nix-info.dependencies
                   else
                     acc
                );

            trans-deps =
              f true
                {}
                (sort (a: b: a.purs-nix-info.name < b.purs-nix-info.name) deps);
          in
          attrValues trans-deps;

        dependencies =
          if args?dependencies
          then create-closure args.dependencies
          else [];

        all-dependencies =
          if args?test-dependencies
          then create-closure (dependencies ++ args.test-dependencies)
          else dependencies;

        make-dep-globs = deps:
          toString (map (a: ''"${a}/**/*.purs"'') deps);

        dep-globs = make-dep-globs dependencies;
        all-dep-globs = make-dep-globs all-dependencies;

        # local-graph = include-test:
        #   let
        #     partial =
        #       parser
        #          (map
        #             (a: "${a}")
        #             (srcs ++ (if include-test then [ test-src ] else []))
        #          );
        #   in
        #   mapAttrs
        #     (_: v:
        #        { depends =
        #            filter
        #              (v: partial?${v})
        #              v.depends;

        #          inherit (v) path;
        #        }
        #     )
        #     partial;

        # # These are needed to prevent repeate evaluation
        # local-graph-tests = local-graph true;
        # local-graph-no-tests = local-graph false;

        foreign-stuff = deps: prefix:
          let
            combined =
              foldl'
                (acc: dep:
                   l.recursiveUpdate acc (dep.purs-nix-info.foreign or {})
                )
                (if foreign == null then {} else foreign)
                deps;
          in
          foldl'
            (acc: { name, value }:
               let module-path = "${prefix}/${name}"; in
               ''
               ${acc}

               if [[ -e ${module-path} ]]; then
                 ${if value?node_modules then
                     "ln -fsT ${value.node_modules} ${module-path}/node_modules"
                   else if value?src then
                     "ln -fsT ${value.src} ${module-path}/foreign"
                   else
                     abort "The only supported foreign options are 'node_modules' and 'src'."
                 }
               fi
               ''
            )
            ""
            (l.mapAttrsToList l.nameValuePair combined);

        copy = "cp --no-preserve=mode --preserve=timestamps -r";

        compile = { name, deps, pre-compile ? null, foreign ? false }: args:
          mkDerivation
            { inherit name;
              phases = [ "buildPhase" "installPhase" ];

              buildPhase =
                if deps != [] then
                  ''
                  ${if pre-compile != null
                    then "${copy} ${pre-compile args} output"
                    else ""
                  }

                  ${u.compile
                      purescript
                      (args
                       // { globs = make-dep-globs deps;
                            output = "output";
                          }
                      )
                  }
                  ''
                else
                  "mkdir output";

              installPhase =
                ''
                mv output $out
                ${if foreign then
                    ''
                    cd $out
                    ${foreign-stuff deps "."}
                    ''
                  else
                    ""
                }
                '';
            };

        built-deps = compile { name = "dependencies"; deps = dependencies; };

        all-built-deps =
          compile
            { name = "test-dependencies";
              deps = all-dependencies;
              pre-compile = built-deps;
            };

        # build-single = { include-test ? false, name, local-deps }:
        #   let
        #     # copy = "cp --no-preserve=mode --preserve=timestamps -r";

        #     built-deps = args:
        #       mkDerivation
        #         { name = "built-deps";
        #           phases = [ "buildPhase" "installPhase" ];

        #           buildPhase =
        #             if dep-globs != ""
        #             then u.compile purescript (args // { globs = dep-globs; })
        #             else "mkdir output";

        #           installPhase = "mv output $out";
        #         };

        #     all-built-deps = args:
        #       mkDerivation
        #         { name = "all-built-deps";
        #           phases = [ "buildPhase" "installPhase" ];

        #           buildPhase =
        #             if all-dep-globs != "" then
        #               ''
        #               ${copy} ${built-deps args} output
        #               ${u.compile purescript (args // { globs = all-dep-globs; })}
        #               ''
        #             else
        #               "mkdir output";

        #           installPhase = "mv output $out";
        #         };

        #     src =
        #       let
        #         graph-path =
        #           (if include-test
        #            then local-graph-tests
        #            else local-graph-no-tests
        #           ).${name}.path;

        #         purs-path =
        #           let matches = match "/nix/store/[^/]+/(.+)$" graph-path; in
        #           if matches != null then
        #             head matches
        #           else
        #             throw "${name}: there should be a match here!";

        #         js-path = replaceStrings [ ".purs" ] [ ".js" ] purs-path;

        #         subsrc =
        #           let
        #             src' =
        #               l.findFirst
        #                 (path: l.hasPrefix "${path}" graph-path)
        #                 (throw "should always find a match")
        #                 (srcs ++ (if include-test then [ test-src ] else []));

        #             relative-path = u.subtract-string graph-path "${src'}";
        #             matches = match "(.+)/[^/]+$" relative-path;
        #           in
        #           if matches == null then src'
        #           else src' + head matches;
        #       in
        #       filterSource
        #         (path: _: l.hasSuffix purs-path path || l.hasSuffix js-path path)
        #         subsrc;

        #     output = { top-level ? true, include-test ? false }: args:
        #       let
        #         incremental = args.incremental or false;
        #         stripped = removeAttrs args [ "incremental" ];

        #         trans-deps =
        #           let
        #             go = ds:
        #               foldl' (acc: d: acc ++ go d.local-deps) [] ds
        #               ++ ds;
        #           in
        #           l.unique (go local-deps);

        #         dg =
        #           if include-test then
        #             { deps-drv = all-built-deps;
        #               deps-list = all-dependencies;
        #               globs = all-dep-globs;
        #             }
        #           else
        #             { deps-drv = built-deps;
        #               deps-list = dependencies;
        #               globs = dep-globs;
        #             };
        #       in
        #       mkDerivation
        #         { name = "${name}-compiled";
        #           phases = [ "buildPhase" "installPhase" ];

        #           buildPhase =
        #             let
        #               augmentations =
        #                 toString
        #                   (map
        #                      (a: "${a.bin include-test args} output;")
        #                      trans-deps
        #                   );

        #               local-dep-globs =
        #                 toString
        #                   (map
        #                     (a: ''"${a.src}/**/*.purs"'')
        #                     trans-deps
        #                   );
        #             in
        #             ''
        #             ${copy} ${dg.deps-drv stripped} output
        #             ${if incremental then augmentations else ""}

        #             ${u.compile
        #                 purescript
        #                 (stripped
        #                  // { globs = ''"${src}/**/*.purs" ${local-dep-globs} ${dg.globs}'';
        #                       output = "output";
        #                     }
        #                 )
        #             }
        #             '';

        #           installPhase =
        #             ''
        #             mv output $out
        #             cd $out

        #             ${if top-level
        #               then foreign-stuff dg.deps-list "."
        #               else ""
        #             }
        #             '';
        #         };

        #     bundle = { esbuild ? {}, main ? true, incremental ? false }:
        #       p.runCommand "${name}-bundle" {}
        #         (u.bundle
        #            { entry-point =
        #                output {} { inherit incremental; }
        #                + "/${name}/index.js";

        #              esbuild = esbuild // { outfile = "$out"; };
        #              inherit main;
        #            }
        #         );

        #     script =
        #       { esbuild ? {}
        #       , incremental ? false
        #       }:
        #       let
        #         bundle' =
        #           bundle
        #             { esbuild =
        #                 { minify = true; }
        #                 // esbuild
        #                 // { platform = "node"; };

        #               inherit incremental;
        #             };
        #       in
        #       p.runCommand "${name}-script" {}
        #         ''
        #         echo $'#! ${nodejs}/bin/node' > $out
        #         cat ${bundle'} >> $out
        #         chmod +x $out
        #         '';

        #     app =
        #       { name
        #       , version ? null
        #       , command ? name
        #       , esbuild ? {}
        #       , incremental ? false
        #       }:
        #       mkDerivation
        #         ({ phases = [ "installPhase" ];

        #            installPhase =
        #              ''
        #              mkdir -p $out/bin; cd $_

        #              cp \
        #                ${script { inherit esbuild incremental; }} \
        #                ${l.escapeShellArg command}
        #              '';
        #          }
        #          // u.make-name name version
        #         );
        #   in
        #   { inherit app bundle local-deps name output script src;

        #     bin = include-test: args:
        #       let
        #         merge-cache =
        #           p.writeShellScript "merge-cache"
        #             ''
        #             f=$(mktemp)
        #             ${p.jq}/bin/jq -s '.[0] * .[1]' "$1" "$2" > $f
        #             cat $f > "$3"
        #             rm $f
        #             '';

        #         output' = output { inherit include-test; top-level = false; } args;
        #       in
        #       p.writeShellScript name
        #         ''
        #         ${copy} ${output'}/${name} $1/${name}
        #         ${merge-cache} ${output'}/cache-db.json $1/cache-db.json $1/cache-db.json
        #         '';
        #   };

        # builds =
        #   mapAttrs
        #     (name: v:
        #        build-single
        #          { inherit name;
        #            local-deps = map (v: builds.${v}) v.depends;
        #          }
        #     )
        #     local-graph-no-tests;

        # all-builds =
        #   mapAttrs
        #     (name: v:
        #        build-single
        #          { include-test = true;
        #            inherit name;
        #            local-deps = map (v: all-builds.${v}) v.depends;
        #          }
        #     )
        #     local-graph-tests;

        output = { test-modules ? false }: args:
          let
            dg =
              if test-modules then
                { name = "all-deps+modules+test-modules";

                  pre-compile =
                    compile
                      { name = "all-deps+modules";
                        deps = srcs ++ all-dependencies;
                        pre-compile = all-built-deps;
                      };

                  deps = srcs ++ [ test-src ] ++ all-dependencies;
                }
              else
                { name = "deps+modules";
                  pre-compile = built-deps;
                  deps = srcs ++ dependencies;
                };
          in
          compile
            { inherit (dg) name deps pre-compile;
              foreign = true;
            }
            args;

        bundle =
          { module ? "Main"
          , esbuild ? {}
          , main ? true
          }:
          p.runCommand "${module}-bundle" {}
            (u.bundle
               { entry-point =
                   output {} {}
                   + "/${module}/index.js";

                 esbuild = esbuild // { outfile = "$out"; };
                 inherit main;
               }
            );

        script =
          { module ? "Main"
          , esbuild ? {}
          }:
          let
            bundle' =
              bundle
                { esbuild =
                    { minify = true; }
                    // esbuild
                    // { platform = "node"; };

                  inherit module;
                };
          in
          p.runCommand "${module}-script" {}
            ''
            echo $'#! ${nodejs}/bin/node' > $out
            cat ${bundle'} >> $out
            chmod +x $out
            '';

        app =
          { name
          , module ? "Main"
          , version ? null
          , command ? name
          , esbuild ? {}
          }:
          mkDerivation
            ({ phases = [ "installPhase" ];

               installPhase =
                 ''
                 mkdir -p $out/bin; cd $_

                 cp \
                   ${script { inherit esbuild module; }} \
                   ${l.escapeShellArg command}
                 '';
             }
             // u.make-name name version
            );
      in
      { dependencies = all-dependencies;
        output = output {};
        inherit app bundle script;

        # modules =
        #   mapAttrs
        #     (_: v:
        #        { inherit (v) bundle script app;
        #          output = v.output {};
        #        }
        #     )
        #     builds;

        command =
          import ./purs-nix-command.nix
            { inherit
                all-dependencies
                all-dep-globs
                dep-globs
                docs-search
                nodejs
                pkgs
                purescript;

              repl-globs =
                make-dep-globs
                  (all-dependencies ++ [ ps-package-stuff.ps-pkgs.psci-support ]);

              srcs' = (a: if args?dir then args.srcs or a else a) [ "src" ];
              test' = (a: if args?dir then args.test or a else a) "test";
              test-module' = test-module;
              utils = u;
              foreign = foreign-stuff all-dependencies;
            };

        test =
          rec
          { run = args:
              let output' = output { test-modules = true; } args; in
              p.writeScript "${test-module}-run"
                (u.node-command
                   { argv-1 = "${test-module}-run";
                     inherit nodejs;
                     import = "${output'}/${test-module}/index.js";
                   }
                );

            check = args:
              p.runCommand "${test-module}-check" {}
                ''
                ${run args}
                touch $out
                '';
          };
      };
  }
