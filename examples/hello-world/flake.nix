{
  inputs = {
    # use a `purs-nix` input instead of `get-flake` in your own projects
    # this is just a way to make sure this flake always uses the current version
    # of purs-nix
    get-flake.url = "github:ursi/get-flake";

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    # purs-nix.url = "github:ursi/purs-nix/ps-0.15";
    # ps-tools.follows = "purs-nix/ps-tools";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      get-flake,
      nixpkgs,
      utils,
      ...
    }@inputs:
    utils.lib.eachDefaultSystem (
      system:
      let
        main-project-flake = get-flake ../../.;

        # inputs.purs-nix | is what you would use in a normal project
        purs-nix = main-project-flake { inherit system; };

        # inputs.ps-tools | is what you would use in a normal project
        ps-tools = main-project-flake.inputs.ps-tools.legacyPackages.${system};

        p = nixpkgs.legacyPackages.${system};

        ps = purs-nix.purs {
          dependencies = [
            "console"
            "effect"
            "prelude"
          ];

          dir = ./.;
        };
      in
      rec {
        apps.default = {
          type = "app";
          program = "${packages.default}/bin/hello";
        };

        packages = with ps; {
          default = app { name = "hello"; };
          bundle = bundle { };
          output = output { };
        };

        devShells.default = p.mkShell {
          buildInputs = with p; [
            nodejs
            (ps.command { })
            purs-nix.esbuild
            purs-nix.purescript
            ps-tools.for-0_15.purescript-language-server
          ];
        };
      }
    );
}
