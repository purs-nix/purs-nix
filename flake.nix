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
    make-shell.url = "github:ursi/nix-make-shell/1";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    official-package-set = { url = "github:purescript/package-sets"; flake = false; };
    parsec.url = "github:nprindle/nix-parsec";
    ps-tools.url = "github:purs-nix/purescript-tools";
    registry = { url = "github:purescript/registry"; flake = false; };
    utils.url = "github:ursi/flake-utils/8";
  };

  outputs = { get-flake, official-package-set, parsec, registry, utils, ... }@inputs:
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
          inherit (parsec.lib) parsec;
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

      herculesCI.ciSystems = [ "x86_64-linux" ];
    }
    // utils.apply-systems
      {
        inherit inputs;
        systems = [ "x86_64-linux" "x86_64-darwin" ];
      }
      ({ make-shell
       , lint-utils
       , pkgs
       , system
       , ...
       }:
        let
          p = pkgs;
          u = import ./utils.nix p;

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

          devShells.default = make-shell {
            packages = with p; [
              deadnix
              lint-utils.nixpkgs-fmt
              statix
            ];

            aliases.lint = "deadnix **/*.nix; statix check";
            env.GIT_LFS_SKIP_SMUDGE = 1;
          };

          formatter = lint-utils.nixpkgs-fmt;
        });
}
