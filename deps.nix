with builtins;
let
  get-flake =
    import
      (fetchGit
         { url = "https://github.com/ursi/get-flake.git";
           rev = "703f15558daa56dfae19d1858bb3046afe68831a";
         }
      );
in
{ system
, inputs ? (get-flake ./.).inputs
}:
  rec
  { builders = inputs.builders { inherit pkgs; };
    docs-search = (get-flake inputs.docs-search).packages.${system}.default;
    easy-ps = import inputs.easy-ps { inherit pkgs; };
    pkgs = inputs.nixpkgs.legacyPackages.${system};

    purescript-language-server =
      import inputs.purescript-language-server { inherit system; };
  }
