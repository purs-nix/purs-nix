{ ps-pkgs, ps-pkgs-ns }@args:
  with ps-pkgs;
  { ursi =
      { debug = import /home/mason/git/purescript-debuggest/thing.nix ps-pkgs;
        prelude = import /home/mason/git/purescript-mason-prelude/package.nix args;
      };
  }
