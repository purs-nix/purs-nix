{ inputs =
    { # use a `purs-nix` input instead of `get-flake` in your own projects
      # this is just a way to make sure this flake always uses the current version
      # of purs-nix
      get-flake.url = "github:ursi/get-flake";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      # purs-nix.url = "github:ursi/purs-nix/ps-0.15";
      # ps-tools.follows = "purs-nix/ps-tools";

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
           main-project-flake = get-flake ../../.;

                    # inputs.purs-nix | is what you would use in a normal project
           purs-nix = main-project-flake { inherit system; };

                    # inputs.ps-tools | is what you would use in a normal project
           ps-tools = main-project-flake.inputs.ps-tools.legacyPackages.${system};

           p = pkgs;
           pkgs = nixpkgs.legacyPackages.${system};
           npmlock2nix = (import inputs.npmlock2nix { inherit pkgs; }).v1;

           ps =
             purs-nix.purs
               { dependencies =
                   [ "console"
                     "effect"
                     "prelude"
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
             with ps;
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
                     ps-tools.for-0_15.purescript-language-server
                   ];
               };
         }
      );
}
