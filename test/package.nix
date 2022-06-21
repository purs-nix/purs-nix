purs-nix-test-packages:
{ build, ps-pkgs, ps-pkgs-ns, licenses, ... }:
  { dependencies =
      let inherit (ps-pkgs-ns) ursi; in
      with ps-pkgs;
      [ console
        ursi.is-even

        (build
           { name = "effect";
             src.path = purs-nix-test-packages;
             info = /effect/package.nix;
           }
        )

        (build
           { name = "prelude";

             src.git =
               { repo = "https://github.com/ursi/purs-nix-test-packages.git";
                 rev = "25b3125cf4cac00feb6d8ba3b24c5f27271d42ff";
               };

             info = /prelude/package.nix;
           }
        )
      ];

    pursuit =
      { name = "test";
        license = licenses.bsd3;
        repo = "https://github.com/ursi/purs-nix.git";
      };
  }
