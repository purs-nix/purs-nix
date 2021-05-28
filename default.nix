with builtins;
let
  inputs = import ./inputs.nix;
  system = currentSystem;
in
{ pkgs ? inputs.pkgs system }:
  import ./purs-nix.nix
    { builders = inputs.builders system;
      inherit pkgs system;
    }
