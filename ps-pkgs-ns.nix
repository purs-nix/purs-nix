{ l, ps-pkgs }:
with builtins;
foldl'
  (acc: file:
  let
    pkgs = import (./namespaces + "/${file}") ps-pkgs;
    namespace = l.removeSuffix ".nix" file;
  in
  acc // l.mapAttrs' (n: l.nameValuePair "${namespace}.${n}") pkgs)
{ }
  (attrNames (readDir ./namespaces))
