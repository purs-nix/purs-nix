{
  inputs = {
    docs-search = {
      # to prevent lock file explosion
      flake = false;
      url = "github:purs-nix/purescript-docs-search";
    };
    get-flake.url = "github:ursi/get-flake";
    lint-utils = {
      url = "github:homotopic/lint-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    official-package-set = { url = "github:purescript/package-sets"; flake = false; };
    ps-tools = {
      url = "github:purs-nix/purescript-tools";
      inputs = {
        lint-utils.follows = "lint-utils";
        nixpkgs.follows = "nixpkgs";
        utils.follows = "utils";
      };
    };
    registry = { url = "github:purescript/registry"; flake = false; };
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { get-flake, official-package-set, registry, ... }@inputs:
    with builtins;
    {
      __functor = _:
        { defaults ? { }
        , overlays ? [ ]
        , pkgs ? inputs.nixpkgs.legacyPackages.${system}
        , system
        }:
        import ./purs-nix.nix {
          docs-search = (get-flake inputs.docs-search).packages.${system}.default;
          inherit defaults official-package-set overlays pkgs registry;
          ps-tools = inputs.ps-tools.legacyPackages.${system};
        };

      templates = {
        default = {
          description = "A basic purs-nix project";
          path = "${./templates/default}";
        };

        flake = {
          description = "The flake.nix only - for converting existing projects";

          path =
            toString
              (filterSource
                (path: _: baseNameOf path == "flake.nix")
                ./templates/default);
        };

        package = {
          description = "A basic purs-nix package setup";
          path = "${./templates/package}";
        };
      };
    }
    // inputs.utils.lib.eachSystem [ "x86_64-linux" "x86_64-darwin" "aarch64-darwin" ]
      (system:
        let
          pkgs = inputs.nixpkgs.legacyPackages.${system};
          p = pkgs;
          u = import ./utils.nix p;
          lu-pkgs = inputs.lint-utils.packages.${system};

          inherit
            (import ./build-pkgs.nix {
              inherit official-package-set pkgs registry;
              utils = u;
            })
            ps-pkgs;
        in
        {
          legacyPackages = {
            package-info =
              mapAttrs
                (_: v: p.writeShellScriptBin v.purs-nix-info.name (u.package-info v))
                ps-pkgs;
          };

          checks =
            let lu = inputs.lint-utils.linters.${system}; in
            {
              deadnix = lu.deadnix { src = ./.; };
              formatting = lu.nixpkgs-fmt { src = ./.; };
              statix = lu.statix { src = ./.; };
            }
            // (
              if system == "x86_64-linux" then
                (get-flake ./test).checks.${system}
                // {
                  "hello world example" =
                    (get-flake ./examples/hello-world).packages.${system}.default;

                  "foreign deps example" =
                    (get-flake ./examples/foreign-dependencies).packages.${system}.default;
                }
              else
                { }
            );

          devShells.default = p.mkShell {
            packages = with p; [
              deadnix
              lu-pkgs.nixpkgs-fmt
              statix
            ];

            GIT_LFS_SKIP_SMUDGE = 1;
          };

          formatter = lu-pkgs.nixpkgs-fmt;
        });
}
