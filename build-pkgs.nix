with builtins;
{
  overlays ? [ ],
  pkgs,
  utils,
}:
let
  l = p.lib;
  p = pkgs;
  u = utils;

  build =
    { name, ... }@args:
    if
      l.hasAttrByPath
        [
          "src"
          "flake"
        ]
        args
    then
      l.recursiveUpdate
        (getFlake args.src.flake.url)
        .packages.${p.system}.${args.src.flake.package or "default"}
        {
          purs-nix-info = {
            inherit name;
          } // args.src;
        }
    else
      let
        legacy =
          l.warnIf (args ? repo)
            ''
              Package: "${name}" is being specified with a deprecated API.
              see: https://github.com/purs-nix/purs-nix/blob/ps-0.15/docs/adding-packages.md
            ''
            args ? repo;

        ref =
          let
            get-ref =
              a: b: a.ref or (if b ? version then "refs/tags/v" + b.version else null);
          in
          if legacy then get-ref args args else get-ref args.src.git args.info;

        info' = args.info or null;

        src =
          let
            fetch-git =
              { repo, rev, ... }:
              fetchGit (
                {
                  url = repo;
                  inherit rev;
                }
                // (if ref == null then { } else { inherit ref; })
              );
          in
          if legacy then
            fetch-git args
          else
            let
              src' = args.src;
            in
            if src' ? git then
              fetch-git src'.git
            else if src' ? path then
              filterSource
                (
                  path: type:
                  type == "directory"
                  || l.hasSuffix ".purs" path
                  || l.hasSuffix ".js" path
                  || (if isPath info' then l.hasSuffix (toString args.info) path else false)
                )
                src'.path
            else
              abort "'src' has no 'flake', 'git', or 'path' attribute";

        info =
          if isPath info' then
            let
              check-arg = "_accepts-future-args-check";
              f = import (src + toString info');
            in
            if (l.functionArgs f) ? ${check-arg} then
              abort "${name}: The info function expects a '${check-arg}' attribute. The purpose of this attribute is to ensure the info function will not break if new arguments are added. If you're encountering this error, it's likely the fix you're looking for is to use the `...` syntax."
            else
              f {
                inherit build ps-pkgs ps-pkgs-ns;
                inherit (l) licenses;

                # make sure the function can accept new arguments in the future
                ${check-arg} = null;
              }
          else if legacy then
            args
          else
            args.info;

        dependencies = info.dependencies or [ ];
        ps-src = info.src or "src";
        version = info.version or null;

        add-optional =
          attribute:
          if info ? ${attribute} then { ${attribute} = info.${attribute}; } else { };
      in
      p.stdenv.mkDerivation (
        {
          inherit src;
          phases = [
            "unpackPhase"
            "installPhase"
          ];

          passthru = {
            overlay =
              let
                f = foldl' (
                  acc: dep:
                  if typeOf dep == "string" then
                    acc
                  else
                    let
                      info = dep.purs-nix-info;
                    in
                    {
                      current = acc.current // {
                        ${info.name} = dep;
                      };

                      overlays =
                        let
                          a = f acc info.dependencies;
                        in
                        a.overlays ++ [ (_: _: a.current) ] ++ acc.overlays;
                    }
                );

                a =
                  f
                    {
                      current = { };
                      overlays = [ ];
                    }
                    dependencies;
                inherit (a) current overlays;
              in
              l.composeManyExtensions (overlays ++ [ (_: _: current) ]);

            purs-nix-info =
              {
                inherit dependencies name;
                src = ps-src;
              }
              // (
                if legacy then
                  { inherit (args) repo rev; }
                else if args.src ? git then
                  { inherit (args.src.git) repo rev; }
                else if
                  l.hasAttrByPath
                    [
                      "pursuit"
                      "repo"
                    ]
                    info
                then
                  { inherit (info.pursuit) repo; }
                else
                  { }
              )
              // add-optional "version"
              // add-optional "foreign"
              // add-optional "pursuit";
          };

          installPhase =
            (if legacy then args else info).install or "ln -s $src/${ps-src} $out";
        }
        // u.make-name name version
      );

  build-set =
    f: l.fix (self: mapAttrs (n: v: build (v // { name = n; })) (f self));

  overlay-stuff =
    let
      build-set' = mapAttrs (
        n: v:
        if v ? type && v.type == "derivation" then v else build (v // { name = n; })
      );

      composeExtensions =
        f: g: final: prev:
        let
          fApplied = f final prev;
          prev' = build-set' (prev // fApplied);
        in
        fApplied // (g final prev');
    in
    # modified versions of the functions in lib.fixedPoints
    {
      extends =
        f: rattrs: self:
        let
          super = rattrs self;
          a = f self super;
        in
        super // build-set' a;

      composeManyExtensions = l.foldr composeExtensions (_: _: { });
    };

  ps-pkgs = l.fix (
    overlay-stuff.extends (overlay-stuff.composeManyExtensions overlays) (
      self: mapAttrs (n: v: build (v // { name = n; })) (import ./ps-pkgs.nix l self)
    )
  );

  ps-pkgs-ns =
    foldl'
      (
        acc:
        { name, value }:
        let
          m = match "(.+)\\.(.+)" name;
        in
        if m == null then
          acc
        else
          let
            namespace = head m;
            no-namespace = l.last m;
          in
          acc
          // {
            ${namespace} = (acc.${namespace} or { }) // {
              ${no-namespace} = value;
            };
          }
      )
      { }
      (l.mapAttrsToList l.nameValuePair ps-pkgs);
in
{
  inherit
    build
    build-set
    ps-pkgs
    ps-pkgs-ns
    ;
}
