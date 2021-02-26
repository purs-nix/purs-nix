{
  inputs =
    { mkBuildSingle.url = "/home/mason/git/nix-purescript-module-cache";

      spago2nix =
        { url = "github:justinwoo/spago2nix";
          flake = false;
        };
    };

  outputs = { self, nixpkgs, utils, spago2nix, mkBuildSingle }:
    utils.defaultSystems
      ({ pkgs, system }: with pkgs;
        { defaultPackage =
            stdenv.mkDerivation
              { name = "purescript";
                dontUnpack = true;
                nativeBuildInputs = [ purescript ];

                output =
                  let
                    deps = (import ./spago-packages.nix { inherit pkgs; }).inputs;

                    buildSingle =
                      mkBuildSingle
                        { inherit deps lib pkgs;
                          src = ./src;
                        };

                    Main = buildSingle
                      { name = "Main";
                        localDeps = [ Dependency ];
                      };

                    Dependency = buildSingle
                      { name = "Dependency";
                        localDeps = [ NestedDependency ];
                      };

                    NestedDependency = buildSingle { name = "Nested.Dependency"; };
                  in
                    Main.output;

                  installPhase = "cp -r $output $out";
                };

          devShell =
            mkShell
              { buildInputs =
                  [ dhall
                    gnumake
                    inotify-tools
                    nodejs
                    electron
                    purescript
                    spago
                    (import spago2nix { inherit pkgs; })
                  ];
              };
        }
      )
      nixpkgs;
}
