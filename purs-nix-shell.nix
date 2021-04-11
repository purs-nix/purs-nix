{ all-dependencies
, all-dep-globs
, dep-globs
, pkgs
}:
{ src ? "src"
, output ? "output"
, bundle ? {}
, compile ? {}
, test ? "test"
, test-module ? "Test.Main"
, nodejs ? pkgs.nodejs
, purescript ? pkgs.purescript
}:
  let
    l = p.lib; p = pkgs; u = import ./utils.nix;
    command = "purs-nix";
    compiler-output = output;

    bundle' =
      { output ? "index.js", ... }@args:
      ''
      ${command} compile \
        && ${
      u.bundle
        purescript
        (args
         // { files = compiler-output;
              inherit output;
            }
        )
      }'';

    compile' = args:
      u.compile
        purescript
        (args
         // { globs = ''"${src}/**/*.purs" ${dep-globs}'';
              inherit output;
            }
        );

    compile-test = args:
      u.compile
        purescript
        (args
         // { globs = ''"${src}/**/*.purs" "${test}/**/*.purs" ${all-dep-globs}'';
              inherit output;
            }
        );

    package-info =
      p.writeShellScript "package-info"
        ''
        case $1 in

        ${builtins.concatStringsSep "\n"
            (builtins.map
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
        ${builtins.concatStringsSep "\n"
            (builtins.map
               (pkg: "echo ${pkg.name}")
               all-dependencies
            )
        }
        '';
    help =
      l.escapeShellArg
        ''
        purs-nix <command>

        Commands:
        ------------------------------------------------------------------------
        compile    Compile your project.
        bundle     Compile then bundle your project.
        run        Compile, bundle, then run the bundle with 'node'.
        test       Compile, bundle your test code, then run the bundle with
                   'node'.
        ------------------------------------------------------------------------
        package-info <name>    Show the info of a specific package.
        packages               Show the info of all the packages in your project.
        -------------------------------------------------------------------------
        output <args>    Pass arguments to 'purs' with the glob for your
                         compiled code passed as the final argument.

        srcs <args>      Pass arguments to 'purs' with the globs for your
                         projects's PureScript source code passed as the
                         final argument.
        -------------------------------------------------------------------------

        Anything that is not a valid command with show this text.
        '';

    run-output = ".purs-nix-run.js";
  in
  p.writeShellScriptBin "purs-nix"
    ''
    case $1 in
      compile ) ${compile' compile};;
      bundle ) ${bundle' bundle};;
      run )
        ${bundle' (bundle // { output = run-output; })} \
          && ${nodejs}/bin/node ${run-output};;
      test )
        ${compile-test compile} && ${
      bundle'
        (bundle
         // { module = test-module;
              output = run-output;
            }
        )
      } && ${nodejs}/bin/node ${run-output};;
      package-info ) ${package-info} $2;;
      packages ) ${packages};;
      output ) ${purescript}/bin/purs ''${@:2} "${compiler-output}/**/*.js";;
      srcs ) ${purescript}/bin/purs ''${@:2} "${src}/**/*.purs" ${dep-globs};;
      * ) echo ${help};;
    esac
    ''
