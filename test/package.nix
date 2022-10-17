with builtins;
{ build, ps-pkgs, licenses, ... }:
  { dependencies =
      let rev = "debd6195fa1d1b2c15f244d496afe89414620a12"; in
      with ps-pkgs;
      [ console
        node-path
        node-process
        effect

        (build
           { name = "prelude";
             src.flake.url = "github:purs-nix/test-packages?dir=prelude&rev=${rev}";
           }
        )

        (build
           { name = "purs-nix.build-test";

             src.git =
               { repo = "https://github.com/purs-nix/test-packages.git";
                 inherit rev;
               };

             info = /build-test/package.nix;
           }
        )
      ];

    pursuit =
      { name = "test";
        license = licenses.bsd3;
        repo = "https://github.com/purs-nix/purs-nix.git";
      };
  }
