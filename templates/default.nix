with builtins;
let
  # it is recommended that you modify these imports
  # so that they're pinned to specific hashes

  pkgs = import
    (fetchGit
       { url = "https://github.com/NixOS/nixpkgs";
         ref = "nixpkgs-unstable";
         # rev = "";
       }
    )
    {};

  purs-nix =
    import
      (fetchGit
         { url = "https://github.com/ursi/purs-nix.git";
           # rev = "";
         }
      )
      {};
  # ----------------------------------------------------

  inherit (purs-nix) ps-pkgs ps-pkgs-ns purs;

  inherit
    (purs
       { dependencies =
           with ps-pkgs;
           [ console
             effect
             prelude
           ];

         src = ./src;
       }
    )
    command;
in
pkgs.mkShell
 { buildInputs =
     with pkgs;
     [ nodejs
       # nodePackages.purescript-language-server
       purs-nix.purescript
       (command {})
     ];
 }
