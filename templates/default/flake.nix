{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix/ps-0.14";
      utils.url = "github:numtide/flake-utils";
    };

  outputs = { nixpkgs, utils, ... }@inputs:
    utils.lib.eachDefaultSystem
      (system:
         let
           pkgs = nixpkgs.legacyPackages.${system};
           purs-nix = inputs.purs-nix { inherit system; };

           ps =
             purs-nix.purs
               { dependencies =
                   with purs-nix.ps-pkgs;
                   [ console
                     effect
                     prelude
                   ];

                 srcs = [ ./src ];
               };
         in
         { packages.default = ps.modules.Main.bundle {};

           devShell =
             pkgs.mkShell
               { packages =
                   with pkgs;
                   [ # entr
                     nodejs
                     (ps.command {})
                     purs-nix.esbuild
                     purs-nix.purescript
                     # purs-nix.purescript-language-server
                   ];

                 # aliases.watch = "find src | entr -s 'echo bundling; purs-nix bundle'";
               };
         }
      );
}
