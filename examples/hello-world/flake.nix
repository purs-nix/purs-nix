{ inputs =
    { get-flake.url = "github:ursi/get-flake";
      make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = { get-flake, utils, ... }@inputs:
    utils.apply-systems
      { inputs = inputs // { purs-nix = get-flake ../../.; }; }
      ({ make-shell, pkgs, purs-nix, ... }:
         let
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
      );
}
