pkgs:
  let
    b = builtins; l = p.lib; p = pkgs; u = import ./utils.nix;

    build =
      { repo
      , rev
      , name
      , info ? null
      , ...
      }@args:
      let
        git-src =
          b.fetchGit
            ({ url = repo;
               inherit rev;
             }
             // (if ref == null then {}
                 else { inherit ref; }
                )
            );

        info' =
          if b.isPath info then
            import (git-src + info) { inherit ps-pkgs ps-pkgs-ns; }
          else
            args;

        dependencies = info'.dependencies or [];
        src = info'.src or "src";
        version = info'.version or null;

        ref = args.ref
              or (if args?version then "refs/tags/v" + args.version
                  else null
                 );
      in
      p.stdenv.mkDerivation
        ({ src = git-src;
           phases = [ "unpackPhase" "installPhase" ];
           passthru = { inherit dependencies repo rev; };
           installPhase = "ln -s $src/${src} $out";
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
           l.mapAttrs
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
           l.mapAttrs
             (ns: pkgs':
               l.mapAttrs
                 (n: v: build (v // { name = "${ns}.${n}"; }))
                 pkgs'
             )
             (f self)
        );
  in
  { inherit ps-pkgs ps-pkgs-ns; }
