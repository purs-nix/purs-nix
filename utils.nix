rec
{ bundle =
    purescript:
    { files ? null
    , globs ? ''"${files}/**/*.js"''
    , module ? "Main"
    , output ? null
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
    ''${purescript}/bin/purs bundle ${flags} ${globs}'';

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
        builtins.concatStringsSep " "
          [ (make-flag "--output " output)
            (make-flag "--verbose-errors" verbose-errors)
            (make-flag "--comments" comments)
            (make-flag "--codegen " codegen)
            (make-flag "--no-prefix" no-prefix)
            (make-flag "--json-errors" no-prefix)
          ];
    in
    ''${purescript}/bin/purs compile ${flags} ${globs}'';

  make-flag = flag: arg:
    if arg == null || arg == false then
      ""
    else if arg == true then
      flag
    else
      flag + arg;

  make-name = name: version:
    if version == null then
      { inherit name; }
    else
      { pname = name; inherit version; };

  package-info = pkg:
    ''
    echo "name:    ${pkg.pname or pkg.name}"
    echo "version: ${pkg.version or "none"}"
    echo "repo:    ${pkg.repo}"
    echo "commit:  ${pkg.rev}"
    echo "source:  ${pkg}"
    '';
}
