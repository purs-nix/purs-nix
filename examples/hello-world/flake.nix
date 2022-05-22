{ inputs =
    { get-flake.url = "github:ursi/get-flake";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      utils.url = "github:numtide/flake-utils";
    };

  outputs = { get-flake, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem
      (system:
         let
           p = nixpkgs.legacyPackages.${system};

           # making sure the example always uses the current version
           purs-nix = (get-flake ../../.) { inherit system; };

           inherit (purs-nix) ps-pkgs purs;

           inherit
             (purs
                { dependencies =
                    with ps-pkgs;
                    [ console
                      effect
                      prelude
                    ];

                  srcs = [ ./src ];
                }
             )
             command
             modules;
         in
         { defaultPackage = modules.Main.app { name = "hello"; };

           devShell =
             p.mkShell
               { buildInputs =
                   with p;
                   [ nodejs
                     purs-nix.esbuild
                     purs-nix.purescript
                     purs-nix.purescript-language-server
                     (command {})
                   ];
               };

           packages =
             with modules.Main;
             { bundle = bundle {};
               output = output {};
             };
         }
      );
}
