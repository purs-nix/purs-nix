{ ps-pkgs, ps-pkgs-ns, licenses, ... }:
  with ps-pkgs;
  { dependencies =
      [ console
        effect
        ps-pkgs-ns.ursi.debug
        prelude
      ];

    pursuit =
      { name = "test";
        license = licenses.bsd3;
        repo = "https://github.com/ursi/purs-nix.git";
      };
  }
