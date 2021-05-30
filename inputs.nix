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
      (fetchTarball
         { url = "https://github.com/NixOS/nixpkgs/archive/32f7980afb5e33f1e078a51e715b9f102f396a69.tar.gz";
           sha256 = "02k9xnkrcmkr21b8pycmf1rbbnzh2x5i2wj9wmlghijfvpjqdn27";
         }
      )
      { inherit system; };
}
