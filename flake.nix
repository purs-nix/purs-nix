{ inputs =
    { builders.url = "github:ursi/nix-builders";
      deadnix.url = "github:astro/deadnix";

      easy-ps =
        { flake = false;
          url = "github:justinwoo/easy-purescript-nix";
        };

      make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

      purescript-language-server =
        { flake = false;
          url = "github:ursi/purescript-language-server/purs-nix";
        };

      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = { nixpkgs, utils, ... }@inputs:
    with builtins;
    { __functor = _:
        { pkgs ? nixpkgs.legacyPackages.${system}
        , system
        }:
        import ./purs-nix.nix { inherit pkgs system; };

      defaultTemplate =
        { description = "A basic purs-nix project";
          path = "${./templates/default}";
        };

      templates =
        { flake =
            { description = "The flake.nix only - for converting existing projects";

              path =
                toString
                  (filterSource
                     (path: _: baseNameOf path == "flake.nix")
                     ./templates/default
                  );
            };

          package =
            { description = "A basic purs-nix package setup";
              path = "${./templates/package}";
            };
        };
    }
    // utils.apply-systems { inherit inputs; }
         ({ deadnix, make-shell, pkgs, system, ... }:
            let
              p = pkgs;
              u = import ./utils.nix system;
              build-pkgs = import ./build-pkgs.nix { inherit pkgs; utils = u; };
              inherit (build-pkgs) ps-pkgs ps-pkgs-ns;
            in
            { apps =
                { package-info =
                    mapAttrs
                      (_: v:
                         { type = "app";
                           program =
                             toString
                               (p.writeScript
                                  "package-info-${v.name}"
                                  (u.package-info v)
                               );
                         }
                      )
                      ps-pkgs;

                  package-info-ns =
                    mapAttrs
                      (_: ps-pkgs':
                         mapAttrs
                           (_: v:
                              { type = "app";
                                program =
                                  toString
                                    (p.writeScript
                                         "package-info-${v.name}"
                                         (u.package-info v)
                                    );
                              }
                           )
                           ps-pkgs'
                      )
                      ps-pkgs-ns;
                };

              devShell =
                make-shell
                  { packages = [ deadnix ];
                    aliases.lint = ''find -name "*.nix" | xargs deadnix'';
                  };
            }
         );
}
