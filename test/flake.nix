{ inputs.purs-nix.url = "path:..";

  outputs = { nixpkgs, utils, purs-nix, ... }:
    utils.defaultSystems
      ({ pkgs, system }: with pkgs;
           let
             inherit (purs-nix { inherit system; }) purs ps-pkgs ps-pkgs-ns;
             inherit (ps-pkgs-ns) ursi;
             inherit
               (purs
                  { dependencies =
                      with ps-pkgs;
                      [ console effect
                        prelude
                        ursi.elmish
                        ursi.ffi-options
                        ursi.html
                        ursi.task-file
                        ursi.prelude
                        ursi.debug
                        point-free
                        task
                      ];

                    src = ./src;
                  }
               )
               modules
               shell;
           in
           { defaultPackage = modules.Main.bundle {};

             devShell =
               mkShell
                 { buildInputs =
                     [ nodejs
                       purescript
                       (shell {})
                     ];
                 };
          }
      )
      nixpkgs;
}


