{
  inputs = {
    docs-search = {
      # to prevent lock file explosion
      flake = false;
      url = "github:purs-nix/purescript-docs-search";
    };
    get-flake.url = "github:ursi/get-flake";
    lint-utils = {
      url = "git+https://gitlab.nixica.dev/mason/lint-utils.git?ref=expose-packages";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    make-shell.url = "github:ursi/nix-make-shell/1";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    parsec.url = "github:nprindle/nix-parsec";
    ps-tools.url = "github:purs-nix/purescript-tools";
    utils.url = "github:ursi/flake-utils/8";
  };

  outputs =
    {
      get-flake,
      parsec,
      utils,
      ...
    }@inputs:
    with builtins;
    {
      __functor =
        _:
        {
          defaults ? { },
          overlays ? [ ],
          system,
        }:
        import ./purs-nix.nix {
          docs-search = (get-flake inputs.docs-search).packages.${system}.default;
          inherit defaults overlays;
          inherit (parsec.lib) parsec;
          pkgs = inputs.nixpkgs.legacyPackages.${system};
          ps-tools = inputs.ps-tools.legacyPackages.${system};
        };

      templates = {
        default = {
          description = "A basic purs-nix project";
          path = "${./templates/default}";
        };

        flake = {
          description = "The flake.nix only - for converting existing projects";

          path = toString (
            filterSource (path: _: baseNameOf path == "flake.nix") ./templates/default
          );
        };

        package = {
          description = "A basic purs-nix package setup";
          path = "${./templates/package}";
        };
      };

      herculesCI.ciSystems = [ "x86_64-linux" ];
    }
    //
      utils.apply-systems
        {
          inherit inputs;
          systems = [
            "x86_64-linux"
            "x86_64-darwin"
          ];
        }
        (
          {
            make-shell,
            lint-utils,
            pkgs,
            system,
            ...
          }:
          let
            p = pkgs;
            u = import ./utils.nix p;

            inherit
              (import ./build-pkgs.nix {
                inherit pkgs;
                utils = u;
              })
              ps-pkgs
              ;
          in
          {
            legacyPackages = {
              package-info =
                mapAttrs (_: v: p.writeScriptBin v.purs-nix-info.name (u.package-info v))
                  ps-pkgs;
            };

            checks =
              let
                lu = inputs.lint-utils.linters.${system};
              in
              {
                deadnix = lu.deadnix { src = ./.; };
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
                lint-utils.nixfmt-rfc166
                statix
              ];

              aliases.lint = "deadnix **/*.nix; statix check";
              env.GIT_LFS_SKIP_SMUDGE = 1;
            };

            formatter = p.writeShellScriptBin "format" ''${lint-utils.nixfmt-rfc166}/bin/nixfmt -w 80 "$@"'';
          }
        );
}
