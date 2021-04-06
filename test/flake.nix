{ inputs =
    { purs2nix.url = "path:..";

      easy-ps =
        { url = "github:justinwoo/easy-purescript-nix";
          flake = false;
        };
    };

  outputs = { nixpkgs, utils, easy-ps, purs2nix, ... }:
    utils.defaultSystems
      ({ pkgs, system }: with pkgs;
         { defaultPackage =
             let deps = import ./deps.nix; in
             (purs2nix
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
