with builtins;
{ all-dependencies
, all-dep-globs
, dep-globs
, nodejs
, pkgs
, purescript
, utils
}:
{ srcs ? [ "src" ]
, globs ? concatStringsSep " " (map (src: ''"${src}/**/*.purs"'') srcs)
, output ? "output"
, bundle ? {}
, compile ? {}
, package ? {}
, test ? "test"
, test-module ? "Test.Main"
, name ? "purs-nix"
}:
  let
    l = p.lib; p = pkgs; u = utils;
    compiler-output = output;

    bundle' = { output ? "index.js", ... }@args:
      u.bundle
        purescript
        (args
         // { files = compiler-output;
              inherit output;
            }
        );

    compile-and-bundle = args:
      ''
      ${compile'}
      ${bundle' args}
      '';


    compile' =
      ''
      ${u.compile
          purescript
            (compile
             // { globs = ''${globs} ${dep-globs}'';
                  inherit output;
                }
            )
      }
      chmod -R u+w ${output}
      '';

    compile-test = args:
      u.compile
        purescript
        (args
         // { globs = ''${globs} "${test}/**/*.purs" ${all-dep-globs}'';
              inherit output;
            }
        );

    package-info =
      p.writeShellScript "package-info"
        ''
        case $1 in

        ${concatStringsSep "\n"
            (map
               (pkg: "${pkg.pname or pkg.name} ) ${u.package-info pkg};;")
               all-dependencies
            )
        }

        * ) echo "There is no package in your project with the name '$1'.";;
        esac
        '';

    packages =
      p.writeShellScript "packages"
        ''
        ${concatStringsSep "\n"
            (map
               (pkg: "echo ${pkg.name}")
               all-dependencies
            )
        }
        '';

    bower =
      let make-error = a: ''echo "You need to define 'package.${a}' in the set you pass to 'command' to use this command". Make sure to re-enter the Nix shell after you fix this.''; in
      if !package?pursuit then
        make-error "pursuit"
      else if !package.pursuit?name then
        make-error "pursuit.name"
      else if !package.pursuit?license then
        make-error "pursuit.license"
      else if !package.pursuit?repo then
        make-error "pursuit.repo"
      else
        let
          bower-packages-registry =
            l.importJSON
              (fetchGit
                 { url = "https://github.com/purescript/registry.git";
                   rev = "55bce52392cab4b595ac1f542954cfceeef2d431";
                 }
               + /bower-packages.json
              );

          bower-set =
            with package;
            { name = "purescript-${pursuit.name}";
              license = [ pursuit.license.spdxId ];

              repository =
                { type = "git";
                  url = pursuit.repo;
                };

              ignore =
                [ "**/.*"
                  "node_modules"
                  "bower_components"
                  output
                ];

              dependencies =
                l.listToAttrs
                  (map
                     (pkg:
                        let registry-name = "purescript-${pkg.pursuit.name or pkg.pname or pkg.name}"; in
                        l.nameValuePair
                          registry-name
                          (if bower-packages-registry?${registry-name} && pkg?version then
                             "^v${pkg.version}"
                           else
                             "${pkg.repo}#${
                             if pkg?version then "v${pkg.version}" else pkg.rev
                             }"
                          )
                     )
                     (package.dependencies or [])
                  );
            };
        in
        "echo ${l.escapeShellArg (toJSON bower-set)} | ${p.jq}/bin/jq . > bower.json";

    run-output = ".purs-nix-run.js";

    exe =
      p.writeShellScript name
        ''
        set -e

        case $1 in
          compile )
            ${compile'}
            echo "Compilation complete";;

          bundle )
            ${compile-and-bundle bundle}
            echo "Bundling complete";;

          run )
            ${compile-and-bundle (bundle // { output = run-output; })}
            ${nodejs}/bin/node ${run-output};;

          test )
            ${compile-test compile}

            ${bundle'
                (bundle
                 // { module = test-module;
                      output = run-output;
                    }
                )
            }

            ${nodejs}/bin/node ${run-output};;

          docs ) ${name} srcs docs;;
          package-info ) ${package-info} "$2";;
          packages ) ${packages};;
          bower ) ${bower};;
          output ) ${purescript}/bin/purs "''${@:2}" "${compiler-output}/**/*.js";;
          srcs ) ${purescript}/bin/purs "''${@:2}" ${globs} ${dep-globs};;
          * ) echo ${help};;
        esac
        '';

    completion =
      let
        commands =
          [ "compile"
            "bundle"
            "run"
            "test"
            "docs"
            "package-info"
            "packages"
            "bower"
            "output"
            "srcs"
          ];
      in
      p.writeText "purs-nix-completion"
        ''complete -W "${toString commands}" ${name}'';

    # keep at the bottom to agree with docs/purs-nix.md
    help =
      l.escapeShellArg
        ''
        ${name} <command>

        Commands:
        ------------------------------------------------------------------------
        compile    Compile your project.
        bundle     Compile then bundle your project.
        run        Compile, bundle, then run the bundle with 'node'.
        test       Compile, bundle your test code, then run the bundle with
                   'node'.

        docs       Generate HTML documentation for all the modules in your
                   project.
        ------------------------------------------------------------------------
        package-info <name>    Show the info of a specific package.
        packages               Show all packages used in your project.
        -------------------------------------------------------------------------
        bower    Generate a bower.json for publishing to Pursuit.
        -------------------------------------------------------------------------
        output <args>    Pass arguments to 'purs' with the glob for your
                         compiled code passed as the final argument.

        srcs <args>      Pass arguments to 'purs' with the globs for your
                         projects's PureScript source code passed as the
                         final argument.
        -------------------------------------------------------------------------

        Anything that is not a valid command will show this text.
        '';
  in
  p.runCommand name {}
    ''
    mkdir -p $out/bin
    cd $_
    ln -s ${exe} ${name}
    cd -
    mkdir -p $out/share/bash-completion/completions
    cd $_
    ln -s ${completion} ${name}
    ''
