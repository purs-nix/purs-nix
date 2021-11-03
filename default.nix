let inputs = import ./inputs.nix; in
{ pkgs ? (inputs system).pkgs
, system ? builtins.currentSystem
}:
  import ./purs-nix.nix { inherit pkgs system; }
