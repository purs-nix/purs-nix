{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix";
      utils.url = "github:ursi/flake-utils/1";
    };

  outputs = { nixpkgs, utils, ... }@inputs:
    utils.default-systems
      ({ make-shell, purs-nix, pkgs, ... }:
         let
           inherit (purs-nix) purs;
           package = import ./package.nix purs-nix;

           inherit
             (purs
                { inherit (package) dependencies;
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
                     nodePackages.bower
                     nodePackages.pulp
                     purs-nix.purescript
                     (command {})
                   ];
               };
         }
      )
      { inherit inputs nixpkgs; };
}
