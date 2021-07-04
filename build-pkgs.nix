with builtins;
pkgs:
  let
    l = p.lib; p = pkgs; u = import ./utils.nix;

    build =
      { repo
      , rev
      , name
      , info ? null
      , ...
      }@args:
      let
        ref = args.ref
              or (if args?version then "refs/tags/v" + args.version
                  else null
                 );

        make-package = { _local ? false }: pkg-src:
          let
            info' =
              if isPath info then
                import (pkg-src + info)
                  { inherit ps-pkgs ps-pkgs-ns;
                    inherit (l) licenses;
                  }
              else
                args;

            dependencies = info'.dependencies or [];
            src = info'.src or "src";
            version = info'.version or null;

            add-optional = attribute:
              if info'?${attribute} then { ${attribute} = info'.${attribute}; } else {};
          in
          p.stdenv.mkDerivation
            ({ src = pkg-src;
               phases = [ "unpackPhase" "installPhase" ];

               passthru =
                 { inherit _local dependencies repo rev;
                   local = make-package { _local = true; };
                 }
                 // add-optional "pursuit";

               installPhase = args.install or "ln -s $src/${src} $out";
             }
             // u.make-name name version
            );
      in
      make-package {}
        (fetchGit
           ({ url = repo;
              inherit rev;
            }
            // (if ref == null then {}
                else { inherit ref; }
               )
           )
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
