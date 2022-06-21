with builtins;
{ pkgs, utils }:
  let
    l = p.lib; p = pkgs; u = utils;

    build =
      { repo ? null
      , rev ? null
      , name
      , info ? null
      , ...
      }@args:
      let
        ref = args.ref
              or (if args?version then "refs/tags/v" + args.version
                  else null
                 );

        make-package = { _local ? false }: src:
          let
            info' =
              if isPath info then
                let
                  check-arg = "_accepts-future-args-check";
                  f = import (src + info);
                in
                if (l.functionArgs f)?${check-arg} then
                  abort "${name}: The info function expects a '${check-arg}' attribute. The purpose of this attribute is to ensure the info function will not break if new arguments are added. If you're encountering this error, it's likely the fix you're looking for is to use the `...` syntax."
                else
                  f { inherit ps-pkgs ps-pkgs-ns;
                      inherit (l) licenses;

                      # make sure the function can accept new arguments in the future
                      ${check-arg} = null;
                    }
              else
                args;

            dependencies = info'.dependencies or [];
            src' = info'.src or "src";
            version = info'.version or null;

            add-optional = attribute:
              if info'?${attribute} then { ${attribute} = info'.${attribute}; } else {};
          in
          p.stdenv.mkDerivation
            ({ inherit src;
               phases = [ "unpackPhase" "installPhase" ];

               passthru =
                 { inherit _local;
                   local = make-package { _local = true; };

                   purs-nix-info =
                     { inherit dependencies name ref repo rev version;
                       src = src';
                     }
                     // add-optional "pursuit";
                 };

               installPhase = args.install or "ln -s $src/${src'} $out";
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
