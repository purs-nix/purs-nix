with builtins;
{ ps-pkgs, licenses, ... }:
  { dependencies =
      with ps-pkgs;
      [ "console"
        "effect"
        "node-path"
        "node-process"
        "prelude"
      ];

    pursuit =
      { name = "test";
        license = licenses.bsd3;
        repo = "https://github.com/purs-nix/purs-nix.git";
      };
  }
