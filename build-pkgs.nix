pkgs:
  let
    l = p.lib; p = pkgs;

    build =
      { repo
      , rev
      , name ? "purescript-package"
      , version ? null
      , ref ? null
      , src ? "src"
      , dependencies ? []
      }:
      let
        ref' =
          if ref == null then
            if version == null then null
            else "refs/tags/v" + version
          else
            ref;
      in
      p.stdenv.mkDerivation
        ({ src =
             builtins.fetchGit
               ({ url = repo;
                  inherit rev;
                }
                // (if ref' == null then {}
                    else { ref = ref'; }
                   )
               );
           phases = [ "unpackPhase" "installPhase" ];
           passthru = { inherit dependencies; };
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
             (ns: ps-pkgs':
               l.mapAttrs
                 (n: v: build (v // { name = ns + "." + n; }))
                 ps-pkgs'
             )
             (f self)
        );
  in
  { inherit ps-pkgs ps-pkgs-ns; }
