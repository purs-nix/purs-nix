{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix";
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

                  src = ./src;
                }
             )
             shell;
         in
         { devShell =
             with pkgs;
             mkShell
               { buildInputs =
                   [ nodejs
                     purescript
                     (shell {})
                   ];
               };
         }
      )
      nixpkgs;
}
