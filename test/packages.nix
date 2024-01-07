with builtins;
{
  switches,
  l,
  ps-pkgs,
  purs,
  ...
}:
let
  buckets =
    set-buckets 1 ps-pkgs
    // set-buckets 2 (get-namespace "ursi")
    // {
      task = 2;
      event = 3;
    };

  get-namespace = ns: l.filterAttrs (n: _: l.hasPrefix "${ns}." n) ps-pkgs;
  set-buckets = n: mapAttrs (_: _: n);

  dependencies =
    foldl'
      (
        acc: name:
        let
          bucket = toString buckets.${name};
        in
        acc
        // {
          ${bucket} = if acc ? ${bucket} then acc.${bucket} ++ [ name ] else [ name ];
        }
      )
      { }
      (attrNames ps-pkgs);
in
# to truly test this you need to manually wipe the caches in ~/.cache/nix
l.foldl'
  (
    acc:
    { name, value }:
    let
      ps = purs {
        dependencies = value;
        srcs = [ ];
      };
      test-name = "compiled packages bucket ${name}";
    in

    acc
    // l.optionalAttrs switches.packages-compile { ${test-name} = ps.output { }; }
  )
  { }
  (l.mapAttrsToList l.nameValuePair dependencies)
