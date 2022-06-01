{ inputs =
    { make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix/ps-0.14";
      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = { utils, ... }@inputs:
    utils.apply-systems { inherit inputs; }
      ({ make-shell, pkgs, purs-nix, ... }:
         let
           ps =
             purs-nix.purs
               { dependencies =
                   with purs-nix.ps-pkgs;
                   [ console
                     effect
                     prelude
                   ];
               };
         in
         { devShell =
             make-shell
               { packages =
                   with pkgs;
                   [ # entr
                     nodejs
                     (ps.command {})
                     purs-nix.purescript
                     # purs-nix.purescript-language-server
                   ];

                 # aliases.watch = "find src | entr -s 'echo bundling; purs-nix bundle'";
               };
         }
      );
}
