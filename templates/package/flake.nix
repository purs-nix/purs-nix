{ inputs =
    { make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix";
      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = { utils, ... }@inputs:
    utils.apply-systems { inherit inputs; }
      ({ make-shell, purs-nix, pkgs, ... }:
         let
           package = import ./package.nix purs-nix;
           ps = purs-nix.purs { inherit (package) dependencies; };
         in
         { devShell =
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs
                     nodePackages.bower
                     nodePackages.pulp
                     (ps.command {})
                     purs-nix.purescript
                     # purs-nix.purescript-language-server
                   ];
               };
         }
      );
}
