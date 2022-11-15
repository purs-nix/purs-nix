with builtins;
{ switches
, l
, p
, parsec
, ps-pkgs
, purescript
, purs
, ...
}:
  let
    buckets =
      set-buckets 1 ps-pkgs
      // set-buckets 2 (get-namespace "ursi")
      // { event = 2;
           task = 2;
         };

    get-namespace = ns: l.filterAttrs (n: _: l.hasPrefix "${ns}." n) ps-pkgs;
    set-buckets = n: mapAttrs (_: _: n);

    dependencies =
      foldl'
        (acc: name:
           let
             bucket = toString buckets.${name};
           in
           acc
           // { ${bucket} =
                  if acc?${bucket}
                  then acc.${bucket} ++ [ name ]
                  else [ name ];
              }
        )
        {}
        (attrNames ps-pkgs);

    purs-graph = deps:
      let globs = toString (map (a: ''"${a}/**/*.purs"'') deps); in
      l.pipe "${purescript}/bin/purs graph ${globs} > $out"
        [ (p.runCommand "purescript-dependency-graph" {})
          readFile
          unsafeDiscardStringContext
          fromJSON
        ];
  in
  # to truly test this you need to manually wipe the caches in ~/.cache/nix
  l.foldl'
    (acc: { name, value }:
       let
         ps = purs { dependencies = value; };
         test-name = "compiled packages bucket ${name}";
       in

       acc
       // l.optionalAttrs switches.packages-compile
            { ${test-name} =
                let
                  command =
                    ps.command
                      { output = "$out";
                        srcs = [];
                      }
                    + "/bin/purs-nix";
                in
                p.runCommand test-name {} "${command} compile";
            }
       // l.optionalAttrs switches.parser
            { "parser matches `purs graph` ${name}" =
                let parser = import ../parser.nix { inherit l parsec; }; in
                assert purs-graph ps.dependencies == parser ps.dependencies;
                p.runCommand "empty" {} "touch $out";
            }
    )
    {}
    (l.mapAttrsToList l.nameValuePair dependencies)
