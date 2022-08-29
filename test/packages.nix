with builtins;
{ switches
, l
, p
, parsec
, ps-pkgs
, ps-pkgs-ns
, purescript
, purs
, ...
}:
  let
    buckets =
      set-buckets 1 all-packages
      // set-buckets 2 (proper-names ps-pkgs-ns.ursi)
      // { event = 2;
           task = 2;
         };

    proper-names = l.mapAttrs' (_: v: l.nameValuePair v.purs-nix-info.name v);
    set-buckets = n: mapAttrs (_: _: n);

    all-packages =
      ps-pkgs
      // foldl'
           (acc: packages: acc // proper-names packages)
           {}
           (attrValues ps-pkgs-ns);

    dependencies =
      foldl'
        (acc: { name, value }:
           let
             bucket = toString buckets.${name};
           in
           acc
           // { ${bucket} =
                  if acc?${bucket}
                  then acc.${bucket} ++ [ value ]
                  else [ value ];
              }
        )
        {}
        (l.mapAttrsToList l.nameValuePair all-packages);

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
       // { ${test-name} =
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
