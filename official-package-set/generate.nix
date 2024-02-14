with builtins;
let
  l = p.lib;
  p = pkgs;
  get-flake = getFlake "github:ursi/get-flake/703f15558daa56dfae19d1858bb3046afe68831a";
  pkgs = (get-flake ../.).inputs.nixpkgs.legacyPackages.${currentSystem};
  package-set-repo = fetchGit "https://github.com/purescript/package-sets";
  packages = l.importJSON (package-set-repo + /packages.json);

  escape-reserved-word = str:
    let reserved-words = [ "assert" ]; in
    if elem str reserved-words then ''"${str}"'' else str;

  prev = import ./. null;
in
l.pipe packages [
  (l.mapAttrsToList (n: v: { inherit n v; }))
  (foldl'
    (acc: { n, v }:
      let
        repo =
          # don't fetch versions we already have
          if prev ? ${n} && v.version == "v" + prev.${n}.info.version then
            v // { inherit (prev.${n}.src.git) rev; }
          else
            fetchGit {
              url = v.repo;
              ref = "refs/tags/${v.version}";
            };
      in
      acc
      + ''
        ${escape-reserved-word n} =
          { src.git =
              { repo = "${v.repo}";
                rev = "${repo.rev}";
              };

            info =
              { version = "${substring 1 (stringLength v.version) v.version}";

                dependencies =
                  [ ${foldl' (acc: d: acc + ''"${d}" '') "" v.dependencies}
                  ];
              };
          };

      ''
    )
    ""
  )
  (str: ''
    ps-pkgs:
      with ps-pkgs;
      { ${str} }
  '')
  (p.writeText "")
]
