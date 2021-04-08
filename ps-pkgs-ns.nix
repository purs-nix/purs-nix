{ ps-pkgs, ps-pkgs-ns }@pkgs:
  with ps-pkgs;
  { ursi =
      { debug = import ((builtins.fetchGit { rev = "c57b867dd6403dba3223e5db28c82c351757f4df"; url = "https://github.com/ursi/purescript-debuggest.git"; }) + /package.nix) pkgs;
        prelude = import /home/mason/git/purescript-mason-prelude/package.nix args;
      };
  }
