{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "path:..";
      utils.url = "github:ursi/flake-utils/1";
    };

  outputs = { nixpkgs, utils, ... }@inputs:
    utils.default-systems
      ({ make-shell, purs-nix, pkgs, ... }:
         let
           inherit (purs-nix) ps-pkgs ps-pkgs-ns purs;

           inherit
             (purs
                { dependencies =
                    with ps-pkgs;
                    [ console
                      effect
                      prelude
                      (purs-nix.build
                         { name = "typeable";
                           repo = "https://github.com/ajnsit/purescript-typeable.git";
                           rev = "836a3e10da7a85636ef629ae8e927a5429606b56";
                           ref = "main";

                           dependencies =
                             with ps-pkgs;
                             [ arrays
                               const
                               control
                               either
                               exists
                               foldable-traversable
                               identity
                               leibniz
                               maybe
                               newtype
                               prelude
                               psci-support
                               tuples
                               unsafe-coerce
                             ];
                         }
                      )
                    ];

                  test-dependencies = [ ps-pkgs."assert" ];
                  src = ./src;
                }
             )
             modules
             command;
         in
         { defaultPackage = modules.Main.install { name = "test"; };

           devShell =
             # https://github.com/ursi/nix-make-shell
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs
                     purs-nix.purescript
                     (command { package = import ./package.nix purs-nix; })
                   ];
               };
         }
      )
      { inherit inputs nixpkgs; };
}
