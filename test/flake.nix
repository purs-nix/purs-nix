{ inputs.purs-nix.url = "path:..";

  outputs = { nixpkgs, utils, purs-nix, ... }:
    utils.defaultSystems
      ({ pkgs, system }: with pkgs;
           let
             inherit (purs-nix { inherit system; }) purs ps-pkgs;
             inherit
               (purs
                  { deps = with ps-pkgs; [ console effect prelude ];
                    src = ./src;
                  }
               )
               bundle
               compile
               modules;
           in
           { apps =
               { bundle = bundle {};
                 compile = compile {};
               };

             defaultPackage = modules.Main.bundle {};

             devShell =
               mkShell
                 { buildInputs =
                     [ nodejs
                       purescript
                     ];
                 };
          }
      )
      nixpkgs;
}
