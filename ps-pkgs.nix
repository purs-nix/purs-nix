{ ps-pkgs, ps-pkgs-ns }:
  with ps-pkgs;
  { aeson =
      { version = "1.0.0";
        repo = "https://github.com/mlabs-haskell/purescript-aeson.git";
        rev = "69bd18c4a9cffdebc45c55d2448740721a91854c";
        ref = "master";

        dependencies =
          [ aff
            argonaut
            argonaut-codecs
            argonaut-core
            arrays
            bifunctors
            bigints
            const
            control
            effect
            either
            exceptions
            foldable-traversable
            foreign-object
            gen
            identity
            integers
            maybe
            newtype
            node-buffer
            node-fs-aff
            node-path
            nonempty
            numbers
            partial
            prelude
            quickcheck
            record
            sequences
            spec
            strings
            transformers
            tuples
            typelevel
            typelevel-prelude
            uint
            untagged-union
          ];
    };

    aeson-helpers =
      { repo = "https://github.com/mlabs-haskell/purescript-bridge-aeson-helpers.git";
        rev = "44d0dae060cf78babd4534320192b58c16a6f45b";
        ref = "main";

        dependencies =
          [ aff
            argonaut-codecs
            argonaut-core
            arrays
            bifunctors
            contravariant
            control
            effect
            either
            enums
            foldable-traversable
            foreign-object
            maybe
            newtype
            ordered-collections
            prelude
            profunctor
            psci-support
            quickcheck
            record
            spec
            spec-quickcheck
            transformers
            tuples
            typelevel-prelude
          ];
      };
    
    argparse-basic =
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

    cardano-transaction-lib =
      { repo = "https://github.com/Plutonomicon/cardano-transaction-lib.git";
        rev = "dca94220c8041b82a0eb97c4e2dde783f130beef";

        dependencies =
          [ aeson
            aeson-helpers
            aff
            aff-promise
            affjax
            arraybuffer-types
            arrays
            bifunctors
            bigints
            checked-exceptions
            console
            const
            control
            debug
            effect
            either
            encoding
            enums
            exceptions
            foldable-traversable
            foreign-object
            http-methods
            identity
            integers
            js-date
            lattice
            lists
            maybe
            medea
            media-types
            monad-logger
            mote
            newtype
            node-buffer
            node-fs
            node-fs-aff
            node-path
            nonempty
            ordered-collections
            partial
            prelude
            profunctor
            profunctor-lenses
            quickcheck
            quickcheck-laws
            rationals
            record
            refs
            spec
            strings
            tailrec
            text-encoding
            these
            transformers
            tuples
            typelevel
            typelevel-prelude
            uint
            undefined
            unfoldable
            untagged-union
            variant
          ];
      };

    lattice =
      { dependencies = [  prelude console properties ];
        repo = "https://github.com/Risto-Stevcev/purescript-lattice.git";
        version = "0.3.0";
        rev = "aebe3686eba30f199d17964bfa892f0176c1742d";
      };
    
    medea =
      { repo = "https://github.com/juspay/medea-ps.git";
        rev = "8b215851959aa8bbf33e6708df6bd683c89d1a5a";
        dependencies =
          [ aff
            argonaut
            arrays
            bifunctors
            control
            effect
            either
            enums
            exceptions
            foldable-traversable
            foreign-object
            free
            integers
            lists
            maybe
            mote
            naturals
            newtype
            node-buffer
            node-fs-aff
            node-path
            nonempty
            ordered-collections
            parsing
            partial
            prelude
            psci-support
            quickcheck
            quickcheck-combinators
            safely
            spec
            strings
            these
            transformers
            typelevel
            tuples
            unicode
            unordered-collections
            unsafe-coerce
          ];
      };

    mote =
      { dependencies = [ these transformers arrays ];
        repo = "https://github.com/garyb/purescript-mote.git";
        version = "1.1.0";
        rev = "29aea4ad7b013d50b42629c87b01cf0202451abd";
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

    
    properties =
      { dependencies = [ prelude console ];
        repo = "https://github.com/Risto-Stevcev/purescript-properties.git";
        version = "0.2.0";
        rev = "ddcad0f6043cc665037538467a2e2e4173ef276a";
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

    sequences =
      { repo = "https://github.com/hdgarrood/purescript-sequences.git";
        version = "3.0.2";
        rev = "1f1d828ef30070569c812d0af23eb7253bb1e990";
        dependencies =
          [ arrays
            ps-pkgs."assert"
            console
            effect
            lazy
            maybe
            newtype
            nonempty
            partial
            prelude
            profunctor
            psci-support
            quickcheck
            quickcheck-laws
            tuples
            unfoldable
            unsafe-coerce
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
