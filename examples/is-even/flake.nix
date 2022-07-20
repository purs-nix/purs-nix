{ inputs =
    { # use a `purs-nix` input instead of `get-flake` in your own projects
      # this is just a way to make sure this flake always uses the current version
      # of purs-nix
      get-flake.url = "github:ursi/get-flake";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

      npmlock2nix =
        { flake = false;
          url = "github:nix-community/npmlock2nix";
        };

      utils.url = "github:numtide/flake-utils";
    };

  outputs = { get-flake, nixpkgs, utils, ... }@inputs:
    utils.lib.eachDefaultSystem
      (system:
         let
           p = pkgs;
           pkgs = nixpkgs.legacyPackages.${system};

                    # inputs.purs-nix | is what you would use in a normal project
           purs-nix = (get-flake ../../.) { inherit system; };
           npmlock2nix = import inputs.npmlock2nix { inherit pkgs; };

           ps =
             purs-nix.purs
               { dependencies =
                   with purs-nix.ps-pkgs;
                   [ console
                     effect
                     prelude
                   ];

                 dir = ./.;

                 foreign.Main.node_modules =
                   npmlock2nix.node_modules { src = ./.; } + /node_modules;
               };
         in
         rec
         { apps.default =
             { type = "app";
               program = "${packages.default}/bin/is-even";
             };

           packages =
             with ps.modules.Main;
             { default = app { name = "is-even"; };
               bundle = bundle {};
               output = output {};
             };

           devShells.default =
             p.mkShell
               { buildInputs =
                   with p;
                   [ nodejs
                     (ps.command {})
                     purs-nix.esbuild
                     purs-nix.purescript
                     purs-nix.purescript-language-server
                   ];
               };
         }
      );
}
