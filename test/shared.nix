{ make-shell, purs-nix, pkgs, ... }:
  let
    inherit (purs-nix) build ps-pkgs;

    ps =
      purs-nix.purs
        { dependencies =
            let
              repo = "https://github.com/ursi/purs-nix-test-packages.git";
              rev = "25b3125cf4cac00feb6d8ba3b24c5f27271d42ff";
            in
            with ps-pkgs;
            [ console

              (build
                 { name = "effect";
                   inherit repo rev;
                   info = /effect/package.nix;
                 }
              )

              (build
                 { name = "prelude";
                   inherit repo rev;
                   info = /prelude/package.nix;
                 }
              )
            ];

          test-dependencies = [ ps-pkgs."assert" ];
          srcs = [ ./src ./src2 ];
        };
  in
  { defaultPackage = ps.modules.Main.app { name = "test"; };

    devShell =
      make-shell
        { packages =
            with pkgs;
            [ nodejs

              (ps.command
                 { name = "purs-nix-test";
                   package = import ./package.nix purs-nix;
                   srcs = [ "src" "src2" ];
                 }
              )

              purs-nix.esbuild
              purs-nix.purescript
              purs-nix.purescript-language-server
            ];
        };
  }

