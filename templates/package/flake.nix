{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    ps-tools.follows = "purs-nix/ps-tools";
    purs-nix.url = "github:purs-nix/purs-nix/ps-0.15";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, utils, ... }@inputs:
    utils.lib.eachSystem [ "x86_64-linux" "x86_64-darwin" ]
      (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        ps-tools = inputs.ps-tools.legacyPackages.${system};
        purs-nix = inputs.purs-nix { inherit system; };
        package = import ./package.nix purs-nix;

        ps = purs-nix.purs {
          inherit (package) dependencies;
          dir = ./.;
        };
      in
      {
        packages.default = ps.bundle { };

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            nodejs
            nodePackages.bower
            (ps.command { })
            ps-tools.for-0_15.pulp
            ps-tools.for-0_15.purescript-language-server
            purs-nix.esbuild
            purs-nix.purescript
          ];
        };
      });
}
