_:
{ ps-pkgs, licenses, ... }:
  { dependencies =
      with ps-pkgs;
      [ console
        effect
        node-process
        prelude
      ];

    pursuit =
      { name = "test";
        license = licenses.bsd3;
        repo = "https://github.com/ursi/purs-nix.git";
      };
  }
