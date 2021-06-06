with builtins;
{ pkgs ? (import ./inputs.nix currentSystem).pkgs }:
  import ./purs-nix.nix currentSystem
