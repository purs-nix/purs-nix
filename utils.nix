with builtins;
p:
  let l = p.lib; in
  rec
  { bundle =
      { entry-point
      , esbuild ? {}
      , main ? true
      }:
      let
        esbuild' =
          { log-level = "warning";
            outfile = "main.js";
          }
          // (if esbuild?platform then {} else { format = "esm"; })
          // esbuild
          // { bundle = true; };

        flags =
          toString
            (l.mapAttrsToList
               (n: v:
                  if isBool v then
                    if v then "--${n}" else ""
                  else
                    "--${n}=${toString v}"
               )
               esbuild'
            );

        build = "${p.esbuild}/bin/esbuild ${flags}";
      in
      if main
      then ''echo 'import { main } from "${entry-point}"; main()' | ${build}''
      else ''${build} ${entry-point}'';


    compile =
      purescript:
      { globs
      , output ? null
      , verbose-errors ? false
      , comments ? false
      , codegen ? null
      , no-prefix ? false
      , json-errors ? false
      }:
      let
        flags =
          toString
            [ (make-flag "--output " output)
              (make-flag "--verbose-errors" verbose-errors)
              (make-flag "--comments" comments)
              (make-flag "--codegen " codegen)
              (make-flag "--no-prefix" no-prefix)
              (make-flag "--json-errors" json-errors)
            ];
      in
      ''${purescript}/bin/purs compile ${flags} ${globs}'';

    repl =
      purescript:
      { globs
      , node-path ? null
      , node-opts ? null
      }:
      let
        flags =
          toString
            [ (make-flag "--node-path " node-path)
              (make-flag "--node-opts " node-opts)
            ];
      in
      ''${purescript}/bin/purs repl ${flags} ${globs}'';

    make-flag = flag: arg:
      if arg == null || arg == false then
        ""
      else if arg == true then
        flag
      else
        flag + arg;

    make-name = unsanitized: version:
      let name = l.strings.sanitizeDerivationName unsanitized; in
      if version == null then
        { inherit name; }
      else
        { pname = name; inherit version; };

    package-info = pkg:
      let info = pkg.purs-nix-info; in
      ''
      echo "name:    ${info.name}"
      echo "version: ${if isNull info.version then "none" else info.version}"
      ${if info?flake then
          ''
          echo "flake:   ${info.flake.url}"
          echo "package: ${info.flake.package or "default"}"''
        else if info?repo then
          ''
          echo "repo:    ${info.repo}"
          ${if info?rev
            then ''echo "commit:  ${info.rev}"''
            else ''echo "path:    ${pkg.src}"''
          }''
        else
          ''echo "path:    ${pkg.src}"''
      }
      echo "source:  ${pkg}"
      '';

    # subtract-string "abcdef" "abc" => "def"
    subtract-string = s1: s2:
      assert l.hasPrefix s2 s1;
      let
        l1 = stringLength s1;
        l2 = stringLength s2;
      in
      substring l2 (l1 - l2) s1;
  }
