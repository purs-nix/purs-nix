{
  inputs.spago2nix = {
    url = "github:justinwoo/spago2nix";
    flake = false;
  };

  outputs = { self, nixpkgs, utils, spago2nix }:
    utils.mkShell
      ({ pkgs, system }: with pkgs;
          {
            buildInputs = [
              dhall
              gnumake
              inotify-tools
              nodejs
              electron
              purescript
              spago
              (import spago2nix { inherit pkgs; })
            ];
          }
      )
      nixpkgs;
}
