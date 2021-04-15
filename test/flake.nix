{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "path:..";
      utils.url = "github:ursi/flake-utils";
    };

  outputs = { nixpkgs, utils, purs-nix, ... }:
    utils.defaultSystems
      ({ mkShell, pkgs, system }:
         let
           inherit (purs-nix { inherit system; }) purs ps-pkgs ps-pkgs-ns;

           inherit
             (purs
                { dependencies =
                    with ps-pkgs;
                    [ console
                      effect
                      prelude
                    ];

                  test-dependencies = [ ps-pkgs."assert" ];
                  src = ./src;
                }
             )
             modules
             shell;
         in
         { defaultPackage = modules.Main.install { name = "test"; };

           devShell =
             # https://github.com/numtide/devshell
             mkShell
               { packages =
                   with pkgs;
                   [ nodejs
                     purescript
                     (shell {})
                   ];
               };
         }
      )
      nixpkgs;
}
