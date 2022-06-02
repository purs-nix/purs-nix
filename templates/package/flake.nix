{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix/ps-0.15";
      utils.url = "github:numtide/flake-utils";
    };

  outputs = { nixpkgs, utils, ... }@inputs:
    utils.lib.eachDefaultSystem
      (system:
         let
           pkgs = nixpkgs.legacyPackages.${system};
           purs-nix = inputs.purs-nix { inherit system; };
           package = import ./package.nix purs-nix;

           ps =
             purs-nix.purs
               { inherit (package) dependencies;
                 srcs = [ ./src ];
               };
         in
         { packages.default = ps.modules.Main.bundle {};

           devShell =
             pkgs.mkShell
               { packages =
                   with pkgs;
                   [ nodejs
                     nodePackages.bower
                     nodePackages.pulp
                     (ps.command {})
                     purs-nix.esbuild
                     purs-nix.purescript
                     # purs-nix.purescript-language-server
                   ];
               };
         }
      );
}
