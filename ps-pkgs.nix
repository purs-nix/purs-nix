{ ps-pkgs, ps-pkgs-ns }:
  with ps-pkgs;
  { argparse-basic =
      { version = "1.0.0";
        repo = "https://github.com/natefaubion/purescript-argparse-basic.git";
        rev = "cad9bd94a84ccf50c53be2f21ab5941a0a9ffeb9";

        dependencies =
          [ arrays
            const
            effect
            either
            filterable
            foldable-traversable
            free
            functors
            maybe
            numbers
            strings
            transformers
            tuples
            typelevel-prelude
          ];
      };

    node-glob-basic =
      { version = "1.2.0";
        repo = "https://github.com/natefaubion/purescript-node-glob-basic.git";
        rev = "22b374b30537a945310fb8049f5bce1b51a7a669";

        dependencies =
          [ aff
            console
            effect
            lists
            maybe
            node-fs-aff
            node-path
            node-process
            ordered-collections
            strings
          ];
      };

    node-workerbees =
      { version = "0.1.2";
        repo = "https://github.com/natefaubion/purescript-node-workerbees.git";
        rev = "5ab52953b64f05b97e8605755708e483c3c44722";

        dependencies =
          [ aff
            argonaut-core
            arraybuffer-types
            avar
            effect
            either
            exceptions
            maybe
            newtype
            parallel
            variant
          ];
      };

    purescript-language-cst-parser =
      { version = "0.9.0";
        repo = "https://github.com/natefaubion/purescript-language-cst-parser.git";
        rev = "0b2410c25f638dcf00089c206d9e4af65f5845d0";

        dependencies =
          [ arrays
            const
            effect
            either
            foldable-traversable
            free
            functors
            maybe
            numbers
            ordered-collections
            strings
            transformers
            tuples
            typelevel-prelude
          ];
      };
  }
  // import ./official-package-set ps-pkgs
  // { event =
         { repo = "https://github.com/ursi/purescript-event.git";
           rev = "8332a25a65e1b939de5b778325b8e6a8571a2e7c";
           info = /package.nix;
         };

       point-free =
         { repo = "https://github.com/ursi/purescript-point-free.git";
           rev = "e4291b1c982312c9dd13e33fdd428817d08548cd";
           info = /package.nix;
         };

       return =
         { repo = "https://github.com/ursi/purescript-return.git";
           rev = "e839ebb8490b47a7af8b8f89f4dc9efa0b16b600";
           info = /package.nix;
         };

       substitute =
         { repo = "https://github.com/ursi/purescript-substitute.git";
           rev = "a511c162d8efc7221b63551bde196d52ff59e4ea";
           info = /package.nix;
         };

       task =
         { repo = "https://github.com/ursi/purescript-task.git";
           rev = "ffd9c147261ba5cbf2c49e7250595815f7879503";
           info = /package.nix;
         };
     }
