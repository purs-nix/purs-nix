with builtins;
system:
  let
    get-flake =
      import
        (fetchGit
           { url = "https://github.com/ursi/get-flake.git";
             rev = "703f15558daa56dfae19d1858bb3046afe68831a";
           }
        );

    purs-nix = get-flake ./.;
    inherit (purs-nix) inputs;
  in
  rec
  { builders = inputs.builders { inherit pkgs; };
    easy-ps = import inputs.easy-ps { inherit pkgs; };
    pkgs = inputs.nixpkgs.legacyPackages.${system};

    purescript-language-server =
      import inputs.purescript-language-server { inherit system; };
  }
