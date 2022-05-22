{ make-shell, purs-nix, pkgs, ... }:
  let
    inherit (purs-nix) ps-pkgs;

    ps =
      purs-nix.purs
        { dependencies =
            with ps-pkgs;
            [ console
              effect
              prelude
              (purs-nix.build
                 { name = "node-glob-basic";
                   version = "1.2.0";
                   repo = "https://github.com/natefaubion/purescript-node-glob-basic.git";
                   rev = "22b374b30537a945310fb8049f5bce1b51a7a669";

                   dependencies =
                     with ps-pkgs;
                       [ aff
                         console
                         effect
                         lists
                         maybe
                         node-fs-aff
                         node-path
                         node-process
                         ordered-collections
                         strings
                       ];
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

              purs-nix.purescript
              purs-nix.purescript-language-server
            ];
        };
  }

