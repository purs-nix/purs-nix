with builtins;
let
  pkgs = (import ../inputs.nix).pkgs currentSystem;
  make-shell = set: pkgs.mkShell { buildInputs = set.packages; };
  purs-nix = import ../. {};
in
(import ./shared.nix { inherit make-shell pkgs purs-nix; }).devShell
