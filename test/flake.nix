{ inputs =
    { mkBuildSingle.url = "/home/mason/git/nix-purescript-module-cache";

      easy-ps =
        { url = "github:justinwoo/easy-purescript-nix";
          flake = false;
        };

      psnp.url = "github:ursi/psnp";
    };

  outputs = { nixpkgs, utils, easy-ps, mkBuildSingle, psnp, ... }:
    utils.defaultSystems
      ({ pkgs, system }: with pkgs;
         { defaultPackage =
             let deps = import ./deps.nix; in
             (mkBuildSingle
               { inherit deps pkgs system;
                 src = ./src;
               }
             ).Main.output;

           devShell =
             mkShell
               { buildInputs =
                   [ dhall
                     nodejs
                     purescript
                   ]
                   ++ (with import easy-ps { inherit pkgs; };
                       [ spago
                         spago2nix
                       ]
                      );
               };
        }
      )
      nixpkgs;
}
