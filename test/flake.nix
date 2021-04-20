{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "path:..";
      utils.url = "github:ursi/flake-utils";
    };

  outputs = { nixpkgs, utils, purs-nix, ... }:
    utils.defaultSystems
      ({ make-shell, pkgs, system }:
         let
           pn = purs-nix { inherit system; };
           inherit (pn) purs ps-pkgs ps-pkgs-ns;

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
             # https://github.com/ursi/nix-make-shell
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs
                     purescript
                     (shell { package = import ./package.nix pn; })
                   ];
               };
         }
      )
      nixpkgs;
}
