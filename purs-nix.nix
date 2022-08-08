with builtins;
deps:
  let
    l = p.lib; p = pkgs; u = import ./utils.nix p;
    inherit (deps) builders docs-search pkgs ps-tools;
    purescript' = ps-tools.for-0_14.purescript;
    ps-package-stuff = import ./build-pkgs.nix { inherit pkgs; utils = u; };
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
                  https://github.com/purs-nix/purs-nix/blob/ps-0.14/docs/purs-nix.md#purs
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
                  https://github.com/purs-nix/purs-nix/blob/ps-0.14/docs/purs-nix.md#purs
                  ''
               );

        test-module = args.test-module or "Test.Main";

        create-closure = deps:
          let
            f = direct:
              foldl'
                (acc: dep:
                   let inherit (dep.purs-nix-info) name; in
                   if l.hasInfix "." name then
                     let path = l.splitString "." name; in
                     if direct || !l.hasAttrByPath path acc.ps-pkgs-ns then
                       let
                         namespace = head path;
                         name' = head (tail path);
                       in
                       f false
                         (acc
                          // { ps-pkgs-ns =
                                 acc.ps-pkgs-ns
                                 // { ${namespace} =
                                        acc.ps-pkgs-ns.${namespace} or {}
                                        // { ${name'} = dep; };
                                    };
                             }
                         )
                         dep.purs-nix-info.dependencies
                     else
                       acc
                   else if direct || !acc.ps-pkgs?${name} then
                     f false
                       (acc
                        // { ps-pkgs =
                               acc.ps-pkgs
                               // { ${name} = dep; };
                           }
                       )
                       dep.purs-nix-info.dependencies
                   else
                     acc
                );

            package-sets =
              f true
                { ps-pkgs = {};  ps-pkgs-ns = {}; }
                (sort (a: b: a.purs-nix-info.name < b.purs-nix-info.name) deps);
          in
          attrValues package-sets.ps-pkgs
          ++ concatMap attrValues (attrValues package-sets.ps-pkgs-ns);

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

        make-srcs-str = a:
          concatStringsSep " " (map (src: ''"${src}/**/*.purs"'') a);

        local-graph = include-test:
          let
            globs = if include-test then all-dep-globs else dep-globs;

            make-graph = extra:
              if extra + globs != "" then
                l.pipe "${purescript}/bin/purs graph ${extra} ${globs} > $out"
                  [ (p.runCommand "purescript-dependency-graph" {})
                    readFile
                    # is this safe?
                    unsafeDiscardStringContext
                    fromJSON
                  ]
              else
                {};

            deps-graph = make-graph "";

            graph =
              make-graph
                (make-srcs-str
                   (srcs ++ (if include-test then [ test-src ] else []))
                );

            partial =
              l.filterAttrs
                (n: _: !deps-graph?${n})
                graph;
          in
          mapAttrs
            (_: v:
               { depends =
                   filter
                     (v: partial?${v})
                     v.depends;

                 inherit (v) path;
               }
            )
            partial;

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

        build-single = { include-test ? false, name, local-deps }:
          let
            copy = "cp --no-preserve=mode --preserve=timestamps -r";

            built-deps = args:
              mkDerivation
                { name = "built-deps";
                  phases = [ "buildPhase" "installPhase" ];

                  buildPhase =
                    if dep-globs != ""
                    then u.compile purescript (args // { globs = dep-globs; })
                    else "mkdir output";

                  installPhase = "mv output $out";
                };

            all-built-deps = args:
              mkDerivation
                { name = "all-built-deps";
                  phases = [ "buildPhase" "installPhase" ];

                  buildPhase =
                    if all-dep-globs != "" then
                      ''
                      ${copy} ${built-deps args} output
                      ${u.compile purescript (args // { globs = all-dep-globs; })}
                      ''
                    else
                      "mkdir output";

                  installPhase = "mv output $out";
                };

            src =
              let
                graph-path = (local-graph include-test).${name}.path;

                purs-path =
                  let matches = match "/nix/store/[^/]+/(.+)$" graph-path; in
                  if matches != null then
                    head matches
                  else
                    throw "${name}: there should be a match here!";

                js-path = replaceStrings [ ".purs" ] [ ".js" ] purs-path;

                subsrc =
                  let
                    src' =
                      l.findFirst
                        (path: l.hasPrefix "${path}" graph-path)
                        (throw "should always find a match")
                        (srcs ++ (if include-test then [ test-src ] else []));

                    relative-path = u.subtract-string graph-path "${src'}";
                    matches = match "(.+)/[^/]+$" relative-path;
                  in
                  if matches == null then src'
                  else src' + head matches;
              in
              filterSource
                (path: _: l.hasSuffix purs-path path || l.hasSuffix js-path path)
                subsrc;

            output = { top-level ? true, include-test ? false }: args:
              let
                args' =
                  if args?zephyr then
                    l.pipe args
                      [ (a: if a?codegen
                            then assert l.hasInfix "corefn" a.codegen; a
                            else args // { codegen = "corefn,js"; }
                        )

                        (a: if top-level
                            then a
                            else removeAttrs a [ "zephyr" ]
                        )
                      ]
                  else
                    args;

                incremental = args.incremental or true;
                stripped = removeAttrs args' [ "incremental" "zephyr" ];

                trans-deps =
                  let
                    go = ds:
                      foldl' (acc: d: acc ++ go d.local-deps) [] ds
                      ++ ds;
                  in
                  l.unique (go local-deps);

                dg =
                  if include-test then
                    { deps-drv = all-built-deps;
                      deps-list = all-dependencies;
                      globs = all-dep-globs;
                    }
                  else
                    { deps-drv = built-deps;
                      deps-list = dependencies;
                      globs = dep-globs;
                    };

                unzephyred =
                  mkDerivation
                    { name = "${name}-compiled-unzephyred";
                      phases = [ "buildPhase" "installPhase" ];

                      buildPhase =
                        let
                          augmentations =
                            toString
                              (map
                                 (a: "${a.bin include-test args} output;")
                                 trans-deps
                              );

                          local-dep-globs =
                            toString
                              (map
                                (a: ''"${a.src}/**/*.purs"'')
                                trans-deps
                              );
                        in
                        ''
                        ${copy} ${dg.deps-drv stripped} output
                        ${if incremental then augmentations else ""}

                        ${u.compile
                            purescript
                            (stripped
                             // { globs = ''"${src}/**/*.purs" ${local-dep-globs} ${dg.globs}'';
                                  output = "output";
                                }
                            )
                        }
                        '';

                      installPhase =
                        "mv output $out";
                    };
              in
              p.runCommand "${name}-compiled" {}
                ''
                ${copy} ${unzephyred} output

                ${if args'?zephyr
                  then "${ps-tools.for-0_14.zephyr}/bin/zephyr -f ${args'.zephyr}"
                  else ""
                }

                mv ${if args'?zephyr then "dce-" else ""}output $out
                cd $out

                ${if top-level
                  then foreign-stuff dg.deps-list "."
                  else ""
                }
                '';

            bundle =
              { esbuild ? {}
              , main ? true
              , incremental ? true
              , zephyr ? true
              }:
              p.runCommand "${name}-bundle" {}
                (u.bundle
                   { entry-point =
                       output {}
                         ({ inherit incremental; }
                          // (if zephyr
                              then { zephyr = if main then "${name}.main" else name; }
                              else {}
                             )
                         )
                       + "/${name}/index.js";

                     esbuild = esbuild // { outfile = "$out"; };
                     inherit main;
                   }
                );

            script =
              { esbuild ? {}
              , incremental ? true
              , zephyr ? true
              }:
              let
                bundle' =
                  bundle
                    { esbuild =
                        { minify = true; }
                        // esbuild
                        // { platform = "node"; };

                      inherit incremental zephyr;
                    };
              in
              p.runCommand "${name}-script" {}
                ''
                echo $'#! ${nodejs}/bin/node' > $out
                cat ${bundle'} >> $out
                chmod +x $out
                '';

            app =
              { name
              , version ? null
              , command ? name
              , esbuild ? {}
              , incremental ? true
              , zephyr ? true
              }:
              mkDerivation
                ({ phases = [ "installPhase" ];

                   installPhase =
                     ''
                     mkdir -p $out/bin; cd $_

                     cp \
                       ${script { inherit esbuild incremental zephyr; }} \
                       ${l.escapeShellArg command}
                     '';
                 }
                 // u.make-name name version
                );
          in
          { inherit app bundle local-deps name output script src;

            bin = include-test: args:
              let
                merge-cache =
                  builders.write-js-script
                    "merge-cache"
                    ''
                    const fs = require(`fs`);

                    const [c1Path, c2Path, outPath] = process.argv.slice(2);

                    c1 = JSON.parse(fs.readFileSync(c1Path));
                    c2 = JSON.parse(fs.readFileSync(c2Path));

                    fs.writeFileSync(outPath, JSON.stringify({...c1, ...c2}));
                    '';

                output' = output { inherit include-test; top-level = false; } args;
              in
              p.writeShellScript name
                ''
                ${copy} ${output'}/${name} $1/${name}
                ${merge-cache} ${output'}/cache-db.json $1/cache-db.json $1/cache-db.json
                '';
          };

        builds =
          mapAttrs
            (name: v:
               build-single
                 { inherit name;
                   local-deps = map (v: builds.${v}) v.depends;
                 }
            )
            (local-graph false);

        all-builds =
          mapAttrs
            (name: v:
               build-single
                 { include-test = true;
                   inherit name;
                   local-deps = map (v: all-builds.${v}) v.depends;
                 }
            )
            (local-graph true);
      in
      { dependencies = all-dependencies;

        modules =
          mapAttrs
            (_: v:
               { inherit (v) bundle script app;
                 output = v.output {};
               }
            )
            builds;

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
              let
                output =
                  all-builds.${test-module}.output
                    { include-test = true; }
                    args;
              in
              p.writeScript "${test-module}-run"
                (u.node-command
                   { argv-1 = "${test-module}-run";
                     inherit nodejs;
                     import = "${output}/${test-module}/index.js";
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
