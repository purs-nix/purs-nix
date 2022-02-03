{ inputs =
    { nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      utils.url = "github:ursi/flake-utils/2";
    };

  outputs = { utils, ... }@inputs:
    utils.default-systems
      ({ make-shell, pkgs, system, ... }:
         let purs-nix = import ../. { inherit system; }; in
         import ./shared.nix { inherit make-shell pkgs purs-nix; }
      )
      inputs;
}
