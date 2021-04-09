{ ps-pkgs, ps-pkgs-ns }@pkgs:
  with ps-pkgs;
  { ursi =
      { debug = import ((builtins.fetchGit { rev = "c57b867dd6403dba3223e5db28c82c351757f4df"; url = "https://github.com/ursi/purescript-debuggest.git"; }) + /package.nix) pkgs;
        prelude = import ((builtins.fetchGit { rev = "281d8e7ab24ff840b08608d2d8ded457daf88b0d"; url = "https://github.com/ursi/purescript-mason-prelude.git"; }) + /package.nix) pkgs;
      };
  }
