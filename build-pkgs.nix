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
            see: https://github.com/ursi/purs-nix/blob/ps-0.15/docs/adding-packages.md
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
                 // (if isNull ref then {} else { inherit ref; })
                );
          in
          if legacy then
            fetch-git args
          else
            let src' = args.src; in
            if src'?repo
            then fetch-git src'
            else src'.path or src';

        info =
          let info' = args.info or null; in
          if isPath info' then
            import (src + info')
              { inherit ps-pkgs ps-pkgs-ns;
                inherit (l) licenses;
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
                     else if args.src?repo then
                       { inherit (args.src) repo rev; }
                     else
                       {}
                    )
                 // add-optional "pursuit";
             };

           installPhase = args.install or "ln -s $src/${ps-src} $out";
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
