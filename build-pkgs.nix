with builtins;
{ pkgs, utils }:
  let
    l = p.lib; p = pkgs; u = utils;

    build =
      { name
      , ...
      }@args:
      let
        legacy =
          l.warnIf (args?repo)
            ''
            Package: "${name}" is being specified with a deprecated API.
            see: https://github.com/ursi/purs-nix/blob/ps-0.14/docs/adding-packages.md
            ''
            args?repo;

        ref =
          let
            get-ref = a: b:
              a.ref
              or (if b?version then "refs/tags/v" + b.version
                  else null
                 );
          in
          if legacy
          then get-ref args args
          else get-ref args.src args.info;

        src =
          let
            fetch-git = { repo, rev, ... }:
              fetchGit
                ({ url = repo;
                   inherit rev;
                 }
                 // (if isNull ref then {allRefs=true;} else { inherit ref; })
                );
          in
          if legacy then
            fetch-git args
          else
            let src' = args.src; in
            if src'?git then
              fetch-git src'.git
            else if src'?path then
              src'.path
            else
              abort "'src' has no 'git' or 'path' attribute";

        info =
          let info' = args.info or null; in
          if isPath info' then
            let
              check-arg = "_accepts-future-args-check";
              f = import (src + info');
            in
            if (l.functionArgs f)?${check-arg} then
              abort "${name}: The info function expects a '${check-arg}' attribute. The purpose of this attribute is to ensure the info function will not break if new arguments are added. If you're encountering this error, it's likely the fix you're looking for is to use the `...` syntax."
            else
              f { inherit build ps-pkgs ps-pkgs-ns;
                  inherit (l) licenses;

                  # make sure the function can accept new arguments in the future
                  ${check-arg} = null;
                }
          else if legacy then
            args
          else
            args.info;

        dependencies = info.dependencies or [];
        ps-src = info.src or "src";
        version = info.version or null;

        add-optional = attribute:
          if info?${attribute} then { ${attribute} = info.${attribute}; } else {};
      in
      p.stdenv.mkDerivation
        ({ inherit src;
           phases = [ "unpackPhase" "installPhase" ];

           passthru =
             { purs-nix-info =
                 { inherit dependencies name version;
                   src = ps-src;
                 }
                 // (if legacy then
                       { inherit (args) repo rev; }
                     else if args.src?git then
                       { inherit (args.src.git) repo rev; }
                     else
                       {}
                    )
                 // add-optional "pursuit";
             };

           installPhase =
             (if legacy then args else info).install or "ln -s $src/${ps-src} $out";
         }
         // u.make-name name version
        );

    ps-pkgs =
      let
        f = self:
          import ./ps-pkgs.nix
            { ps-pkgs = self;
              inherit ps-pkgs-ns;
            };
      in
      l.fix
        (self:
           mapAttrs
             (n: v: build (v // { name = n; }))
             (f self)
        );

    ps-pkgs-ns =
      let
        f = self:
          import ./ps-pkgs-ns.nix
            { inherit ps-pkgs;
              ps-pkgs-ns = self;
            };

        l = pkgs.lib;
      in
      l.fix
        (self:
           mapAttrs
             (ns: pkgs':
               mapAttrs
                 (n: v: build (v // { name = "${ns}.${n}"; }))
                 pkgs'
             )
             (f self)
        );
  in
  { inherit build ps-pkgs ps-pkgs-ns; }
