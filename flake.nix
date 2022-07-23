{ inputs =
    { builders.url = "github:ursi/nix-builders";
      deadnix.url = "github:astro/deadnix";

      docs-search =
        { # to prevent lock file explosion
          flake = false;
          url = "github:purs-nix/purescript-docs-search";
        };

      get-flake.url = "github:ursi/get-flake";
      make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      ps-tools.url = "github:purs-nix/purescript-tools";
      statix.url = "github:nerdypepper/statix";
      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = { get-flake, utils, ... }@inputs:
    with builtins;
    { __functor = _: { system }:
        import ./purs-nix.nix (import ./deps.nix { inherit inputs system; });

      templates =
        { default =
            { description = "A basic purs-nix project";
              path = "${./templates/default}";
            };

          flake =
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
    // utils.apply-systems
         { inherit inputs;
           systems = [ "x86_64-linux" "x86_64-darwin" ];
         }
         ({ deadnix, make-shell, pkgs, statix, system, ... }:
            let
              p = pkgs;
              u = import ./utils.nix p;
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
                      (_:
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
                      )
                      ps-pkgs-ns;
                };

              checks =
                { lint =
                    p.runCommand "lint" {}
                      ''
                      ${deadnix}/bin/deadnix -f $(find ${./.} -name "*.nix")

                      # https://github.com/nerdypepper/statix/issues/51
                      ln -s ${./statix.toml} statix.toml
                      ${statix}/bin/statix check ${./.}
                      touch $out
                      '';
                }
                // (if system == "x86_64-linux" then
                      (get-flake ./test).checks.${system}
                       // { "hello world example" =
                               (get-flake ./examples/hello-world)
                                 .packages.${system}.default;

                            "is-even example" =
                               (get-flake ./examples/is-even)
                                 .packages.${system}.default;
                          }
                    else
                      {}
                   );

              devShells.default =
                make-shell
                  { packages = [ deadnix statix ];
                    aliases.lint = ''deadnix **/*.nix; statix check'';
                  };
            }
         );
}
