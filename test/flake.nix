{ inputs =
    { get-flake.url = "github:ursi/get-flake";
      make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

      purs-nix-test-packages =
        { flake = false;
          url = "github:ursi/purs-nix-test-packages";
        };

      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = { get-flake, purs-nix-test-packages, utils, ... }@inputs:
    utils.apply-systems
      { inputs = inputs // { purs-nix = get-flake ../.; }; }
      ({ make-shell, pkgs, purs-nix, ... }:
         let
           inherit (purs-nix) build ps-pkgs;
           package = import ./package.nix purs-nix-test-packages purs-nix;

           ps =
             purs-nix.purs
               { inherit (package) dependencies;
                 test-dependencies = [ ps-pkgs."assert" ];
                 srcs = [ ./src ./src2 ];
               };
         in
         { packages.default = ps.modules.Main.app { name = "test"; };

           devShells.default =
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs

                     (ps.command
                        { name = "purs-nix-test";
                          inherit package;
                          srcs = [ "src" "src2" ];
                        }
                     )

                     purs-nix.esbuild
                     purs-nix.purescript
                     purs-nix.purescript-language-server
                   ];
               };
         }
      );
}
