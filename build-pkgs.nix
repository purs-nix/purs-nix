pkgs:
  let
    l = p.lib; p = pkgs;

    build =
      { repo
      , rev
      , name
      , info ? null
      , ps-pkgs
      , ps-pkgs-ns
      , ...
      }@args:
      let
        git-src =
          builtins.fetchGit
            ({ url = repo;
               inherit rev;
             }
             // (if ref == null then {}
                 else { inherit ref; }
                )
            );

        info' =
          if builtins.isPath info then
            import (git-src + info) args
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
         // (if version == null then
               { inherit name; }
             else
               { pname = name; inherit version; }
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
           l.mapAttrs
             (n: v:
                build
                  (v
                   // { name = n;
                        ps-pkgs = self;
                        inherit ps-pkgs-ns;
                      }
                  )
             )
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
                 (n: v:
                    build
                      (v
                       // { name = "${ns}.${n}";
                            inherit ps-pkgs;
                            ps-pkgs-ns = self;
                          }
                      )
                 )
                 pkgs'
             )
             (f self)
        );
  in
  { inherit ps-pkgs ps-pkgs-ns; }
