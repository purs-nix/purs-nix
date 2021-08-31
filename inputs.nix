with builtins;
system:
  rec
  { builders =
      import
        (fetchGit
           { url = "https://github.com/ursi/nix-builders.git";
             rev = "aad61783c82cac2b6f5dbbee525c12360c76f7a9";
           }
        )
        { inherit pkgs system; };

    easy-ps =
      import
        (fetchGit
           { url = "https://github.com/justinwoo/easy-purescript-nix.git";
             rev = "d0f592b71b2be222f8dcfb4f4cefb52608bbc1ae";
           }
        )
        { inherit pkgs; };

    pkgs =
      import
        (fetchTarball
           { url = "https://github.com/NixOS/nixpkgs/archive/32f7980afb5e33f1e078a51e715b9f102f396a69.tar.gz";
             sha256 = "02k9xnkrcmkr21b8pycmf1rbbnzh2x5i2wj9wmlghijfvpjqdn27";
           }
        )
        { inherit system; };

    purescript-language-server =
      import
        (fetchGit
           { url = "https://github.com/ursi/purescript-language-server.git";
             ref = "purs-nix";
             rev = "8a6c20402bab013c3510ab262aebc151059c2a2e";
           }
        )
        { inherit system; };
  }
