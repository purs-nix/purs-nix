{ inputs.utils.url = "github:numtide/flake-utils";

  outputs = { utils, ... }:
    with builtins;
    let inputs = import ./inputs.nix; in
    { __functor = _:
        { system
        , pkgs ? inputs.pkgs system
        }:
        import ./purs-nix.nix system;

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
    // utils.lib.eachDefaultSystem
         (system:
            let
              l = p.lib; p = (inputs system).pkgs;
              u = import ./utils.nix system;
              build-pkgs = import ./build-pkgs.nix { pkgs = p; utils = u; };
              inherit (build-pkgs) ps-pkgs ps-pkgs-ns;
            in
            { apps =
                { package-info =
                    mapAttrs
                      (n: v:
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
                      (ns: ps-pkgs':
                         mapAttrs
                           (n: v:
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
            }
         );
}
