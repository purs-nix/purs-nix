{ inputs =
    { get-flake.url = "github:ursi/get-flake";
      make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

      purs-nix-test-packages =
        { flake = false;
          url = "github:ursi/purs-nix-test-packages";
        };

      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = { get-flake, purs-nix-test-packages, utils, ... }@inputs:
    utils.apply-systems
      { inputs = inputs // { purs-nix = get-flake ../.; }; }
      ({ make-shell, pkgs, purs-nix, ... }:
         let
           inherit (purs-nix) build ps-pkgs;

           ps =
             purs-nix.purs
               { dependencies =
                   let
                   in
                   with ps-pkgs;
                   [ console

                     (build
                        { name = "effect";
                          src = purs-nix-test-packages;
                          info = /effect/package.nix;
                        }
                     )

                     (build
                        { name = "prelude";

                          src =
                            { repo = "https://github.com/ursi/purs-nix-test-packages.git";
                              rev = "25b3125cf4cac00feb6d8ba3b24c5f27271d42ff";
                            };

                          info = /prelude/package.nix;
                        }
                     )
                   ];

                 test-dependencies = [ ps-pkgs."assert" ];
                 srcs = [ ./src ./src2 ];
               };
         in
         { packages.default = ps.modules.Main.app { name = "test"; };

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
      );
}
