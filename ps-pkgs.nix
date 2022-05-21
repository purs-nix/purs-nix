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

    event =
      { version = "1.6.6";
        repo = "https://github.com/mikesol/purescript-event.git";
        rev = "1ce0eed386b898cc925ad14dd2b15e1b9737dd93";

        dependencies =
          [ arrays
            control
            datetime
            effect
            either
            filterable
            foldable-traversable
            js-timers
            maybe
            monoid-extras
            newtype
            now
            ordered-collections
            prelude
            profunctor
            record
            refs
            st
            tuples
            unsafe-coerce
            unsafe-reference
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
  // { task =
         { repo = "https://github.com/ursi/purescript-task.git";
           rev = "ffd9c147261ba5cbf2c49e7250595815f7879503";
           info = /package.nix;
         };
     }
