{ all-dependencies
, all-dep-globs
, defaults
, dep-globs
  # , docs-search
, nodejs
, pkgs
, purescript
, repl-globs
, srcs'
, test'
, test-module'
, utils
, foreign
}:
with builtins;
let l = p.lib; p = pkgs; u = utils; in
{ srcs ? srcs'
, src-globs ? toString (map (src: ''"${src}/**/*.purs"'') srcs)
, output ? l.attrByPath [ "compile" "output" ] "output" defaults
, bundle ? { }
, compile ? { }
, test ? test'
, test-module ? test-module'
, name ? "purs-nix"
}:
let
  compiler-output = output;

  globs = {
    all = ''${src-globs} "${test}/**/*.purs" ${all-dep-globs}'';
    main = "${src-globs} ${dep-globs}";
    repl = "${src-globs} ${repl-globs}";
  };

  bundle' =
    { esbuild ? { }
    , main ? true
    , module ? "Main"
    ,
    }:
    u.bundle {
      entry-point = "./${compiler-output}/${module}/index.js";
      inherit esbuild main;
    };

  compile-and-bundle = args: ''
    ${compile'}
    ${bundle' args}
  '';

  make-compile = args:
    let
      with-docs =
        let all-args = defaults.compile or { } // compile // args; in
        if all-args ? codegen then
          if l.hasInfix "docs" all-args.codegen then
            all-args
          else
            all-args // { codegen = "${compile.codegen},docs"; }
        else
          all-args // { codegen = "docs,js"; };
    in
    ''
      ${u.compile purescript with-docs}
      chmod -R u+w ${output}
      ${foreign output}
    '';

  compile' = make-compile {
    globs = globs.main;
    inherit output;
  };

  compile-test = make-compile {
    globs = globs.all;
    inherit output;
  };

  package-info = p.writeShellScript "package-info" ''
    case $1 in

    ${concatStringsSep "\n"
        (map
           (pkg: "${pkg.purs-nix-info.name} ) ${u.package-info pkg};;")
           all-dependencies)
    }

    * ) echo "There is no package in your project with the name '$1'.";;
    esac
  '';

  packages = p.writeShellScript "packages" ''
    ${concatStringsSep "\n"
        (map
           (pkg:
              let
                info = pkg.purs-nix-info;
              in
              if u.has-version pkg then
                "echo ${info.name}: ${info.version}"
              else
                "echo ${info.name}")
           all-dependencies)
    }
  '';

  exe =
    let
      node-command =
        command: module:
        u.node-command {
          argv-1 = "${name} ${command}";
          inherit nodejs;
          import = "./${output}/${module}/index.js";
        };
    in
    p.writeShellScript name ''
      set -e

      case $1 in
        compile )
          ${compile'}
          echo "Compilation complete";;

        bundle )
          ${compile-and-bundle bundle}
          echo "Bundling complete";;

        run )
          ${compile'}
          ${node-command "run" (bundle.module or "Main")};;

        test )
          ${compile-test}
          ${node-command "test" test-module};;

        repl )
          if [[ ! -e .purs-repl ]]; then
            echo import Prelude > .purs-repl
          fi

          ${foreign ".psci_modules"}
          ${u.repl purescript { globs = globs.repl; }};;

        docs ) ${purescript}/bin/purs docs \
          --compile-output ${output} \
          "''${@:2}" ${globs.all};;

        package-info ) ${package-info} "$2";;
        packages ) ${packages};;
        output ) ${purescript}/bin/purs "''${@:2}" "${compiler-output}/**/*.js";;

        srcs )
          find -L ${
            toString (map (a: ''"${a}"'') (srcs ++ [ test ] ++ all-dependencies))
          } -name "*.purs";;

        * ) echo ${help};;
      esac
    '';

  completion =
    let
      commands = [
        "compile"
        "bundle"
        "run"
        "test"
        "repl"
        "docs"
        "package-info"
        "packages"
        "output"
        "srcs"
      ];
    in
    p.writeText "purs-nix-completion" ''complete -W "${toString commands}" ${name}'';

  # keep at the bottom to agree with docs/purs-nix.md
  help = l.escapeShellArg ''
    ${name} <command>

    Commands:
    ------------------------------------------------------------------------
    compile        Compile your project.
    bundle         Compile then bundle your project.
    run            Compile and run <MainModule>.main with node.
    test           Compile and run <TestModule>.main with node.

    repl           Enter the REPL
    docs <args>    Generate HTML documentation for all the modules in your
                   project.
    ------------------------------------------------------------------------
    package-info <name>    Show the info of a specific package.
    packages               Show all packages used in your project.
    ------------------------------------------------------------------------
    srcs    Echo all PureScript globs for your project.
    ------------------------------------------------------------------------

    Anything that is not a valid command will show this text.
  '';
in
p.runCommand name { } ''
  mkdir -p $out/bin
  cd $_
  ln -s ${exe} ${name}
  cd -
  mkdir -p $out/share/bash-completion/completions
  cd $_
  ln -s ${completion} ${name}
''
