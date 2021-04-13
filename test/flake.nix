{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "path:..";
      utils.url = "github:ursi/flake-utils";
    };

  outputs = { nixpkgs, utils, purs-nix, ... }:
    utils.defaultSystems
      ({ pkgs, system }:
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
             shell
             shellHook;
         in
         { defaultPackage = modules.Main.install { name = "test"; };

           devShell =
             with pkgs;
             mkShell
               { buildInputs =
                   [ nodejs
                     purescript
                     (shell {})
                   ];

                 # temporary workaround for adding bash completion
                 inherit shellHook;
               };
         }
      )
      nixpkgs;
}
