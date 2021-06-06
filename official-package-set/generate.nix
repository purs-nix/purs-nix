with builtins;
let
  l = p.lib; p = pkgs;
  pkgs = (import ../inputs.nix currentSystem).pkgs;
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

  prev = import ./. null;
in
l.pipe packages
  [ (l.mapAttrsToList (n: v: { inherit n v; }))
    (foldl'
       (acc: { n, v }:
          let
            repo =
              # don't fetch versions we already have
              if prev?${n} && v.version == "v" + prev.${n}.version then
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
