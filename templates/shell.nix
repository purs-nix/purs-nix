with builtins;
let
  get-flake = import (
    fetchGit {
      url = "https://github.com/ursi/get-flake.git";
      rev = "703f15558daa56dfae19d1858bb3046afe68831a";
    }
  );

  purs-nix-flake = get-flake (
    fetchGit {
      url = "https://github.com/purs-nix/purs-nix.git";
      # rev = "";
      ref = "ps-0.15";
    }
  );

  system = currentSystem;
  pkgs = purs-nix-flake.inputs.nixpkgs.legacyPackages.${system};
  ps-tools = purs-nix-flake.inputs.ps-tools.legacyPackages.${system};
  purs-nix = purs-nix-flake { inherit system; };

  ps = purs-nix.purs {
    dependencies = with purs-nix.ps-pkgs; [
      console
      effect
      prelude
    ];

    dir = ./.;
  };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    entr
    nodejs
    (ps.command { })
    ps-tools.for-0_15.purescript-language-server
    purs-nix.esbuild
    purs-nix.purescript
  ];

  shellHook = ''
    alias watch="find src | entr -s 'echo bundling; purs-nix bundle'"
  '';
}
