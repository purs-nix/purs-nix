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

  ps =
    purs
      { dependencies =
          with ps-pkgs;
          [ console
            effect
            prelude
          ];
      };
in
pkgs.mkShell
 { buildInputs =
     with pkgs;
     [ # entr
       nodejs
       (ps.command {})
       purs-nix.esbuild
       purs-nix.purescript
       # purs-nix.purescript-language-server
     ];

   # shellHook = ''alias watch="find src | entr -s 'echo bundling; purs-nix bundle'"'';
 }
