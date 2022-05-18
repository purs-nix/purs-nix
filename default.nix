let make-deps = import ./deps.nix; in
{ system ? builtins.currentSystem
, deps ? {}
}:
  import ./purs-nix.nix (make-deps { inherit system; } // deps)
