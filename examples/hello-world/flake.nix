{ inputs =
    { make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      # purs-nix.url = "path:../..";
      utils.url = "github:ursi/flake-utils/6";
    };

  outputs = { utils, ... }@inputs:
    utils.for-default-systems
      ({ make-shell, pkgs, /*purs-nix ,*/ system, ... }:
         let
           # unforunately flake inputs can't be from parent directories,
           # so we fall back to this for the examples
           purs-nix = import ../.. { inherit system; };

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
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs
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
      )
      inputs;
}
