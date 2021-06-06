with builtins;
let
  pkgs = (import ../../inputs.nix currentSystem).pkgs;
  make-shell = set: pkgs.mkShell { buildInputs = set.packages; };
  purs-nix = import ../../. {};
  shared = import ../shared.nix { inherit make-shell pkgs purs-nix; };
in
{ build = shared.defaultPackage;
  shell = shared.devShell;
}
