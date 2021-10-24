{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix";
      utils.url = "github:ursi/flake-utils/3";
    };

  outputs = { utils, ... }@inputs:
    utils.default-systems
      ({ make-shell, purs-nix, pkgs, ... }:
         let
           inherit (purs-nix) ps-pkgs ps-pkgs-ns purs;
           package = import ./package.nix purs-nix;
           inherit (purs { inherit (package) dependencies; }) command;
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
                     # purs-nix.purescript-language-server
                     (command {})
                   ];
               };
         }
      )
      inputs;
}
