{ inputs =
    { # use a `purs-nix` input instead of `get-flake` in your own projects
      # this is just a way to make sure this flake always uses the current version
      # of purs-nix
      get-flake.url = "github:ursi/get-flake";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      utils.url = "github:numtide/flake-utils";
    };

  outputs = { get-flake, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem
      (system:
         let
           p = nixpkgs.legacyPackages.${system};

                    # inputs.purs-nix | is what you would use in a normal project
           purs-nix = (get-flake ../../.) { inherit system; };

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
         { defaultPackage = ps.modules.Main.app { name = "hello"; };

           devShell =
             p.mkShell
               { buildInputs =
                   with p;
                   [ nodejs
                     (ps.command {})
                     purs-nix.purescript
                     purs-nix.purescript-language-server
                   ];
               };

           packages =
             with ps.modules.Main;
             { bundle = bundle {};
               output = output {};
             };
         }
      );
}
