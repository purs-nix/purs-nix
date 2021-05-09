with builtins;
let
  l = p.lib; p = pkgs;

  pkgs =
    import
      (fetchGit
         { url = "https://github.com/NixOS/nixpkgs";
           rev = "32f7980afb5e33f1e078a51e715b9f102f396a69";
         }
      )
      {};

  package-set-repo = fetchGit "https://github.com/purescript/package-sets";
  packages = l.importJSON (package-set-repo + /packages.json);

  escape-reserved-word = ps-pkgs: str:
    let
      reserved-words = [ "assert" ];
    in
    if elem str reserved-words then
      if ps-pkgs then ''ps-pkgs."${str}"''
      else ''"${str}"''
    else
      str;

  log = a: trace a a;

  prev = import ./. null;
in
l.pipe packages
  [ (l.mapAttrsToList (n: v: { inherit n v; }))
    (foldl'
       (acc: { n, v }:
          let
            repo =
              # don't fetch versions we already have
              if v.version == "v" + prev.${n}.version then
                v // { inherit (prev.${n}) rev; }
              else
                fetchGit
                  { url = v.repo;
                    ref = "refs/tags/${v.version}";
                  };
          in
          acc
          + ''
            ${escape-reserved-word false n} =
              { version = "${substring 1 (stringLength v.version) v.version}";
                repo = "${v.repo}";
                rev = "${repo.rev}";
                dependencies =
                  [ ${foldl'
                        (acc: d: acc + escape-reserved-word true d + " ")
                        ""
                        v.dependencies
                    }
                  ];
              };

            ''
       )
       ""
    )
    (str:
       ''
       ps-pkgs:
         with ps-pkgs;
         { ${str} }
       ''
    )
    (p.writeText "")
  ]
