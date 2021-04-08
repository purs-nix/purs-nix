{ inputs =
    { purs-nix.url = "path:..";

      easy-ps =
        { url = "github:justinwoo/easy-purescript-nix";
          flake = false;
        };
    };

  outputs = { nixpkgs, utils, easy-ps, purs-nix, ... }:
    utils.defaultSystems
      ({ pkgs, system }: with pkgs;
         { defaultPackage =
             let inherit (purs-nix { inherit system; }) purs ps-pkgs; in
             (purs
                { inherit pkgs system;
                  deps =
                    with ps-pkgs;
                    [ console
                      effect
                      prelude
                    ];

                  src = ./src;
                }
             ).Main.bundle {};

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
