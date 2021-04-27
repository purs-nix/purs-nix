{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix";
      utils.url = "github:ursi/flake-utils/1";
    };

  outputs = { nixpkgs, utils, ... }@inputs:
    utils.default-systems
      ({ make-shell, pkgs, purs-nix, ... }:
         let
           inherit (purs-nix) purs ps-pkgs ps-pkgs-ns;

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
             command;
         in
         { devShell =
             # https://github.com/ursi/nix-make-shell
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs
                     purs-nix.purescript
                     (command {})
                   ];
               };
         }
      )
      { inherit inputs nixpkgs; };
}
