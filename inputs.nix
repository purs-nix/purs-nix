with builtins;
rec
{ builders = system:
    import
      (fetchGit
         { url = "https://github.com/ursi/nix-builders.git";
           rev = "aad61783c82cac2b6f5dbbee525c12360c76f7a9";
         }
      )
      { pkgs = pkgs system;
        inherit system;
      };

  pkgs = system:
    import
      (fetchGit
         { url = "https://github.com/NixOS/nixpkgs.git";
           rev = "32f7980afb5e33f1e078a51e715b9f102f396a69";
         }
      )
      { inherit system; };
}
