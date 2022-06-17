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
      { inputs = inputs // { purs-nix = get-flake ../.; };
      }
      ({ make-shell, pkgs, purs-nix, ... }:
         import ./shared.nix
           { inherit make-shell pkgs purs-nix purs-nix-test-packages; }
      );
}
