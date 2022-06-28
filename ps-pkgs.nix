{ ps-pkgs, ... }:
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
      { src.git =
          { repo = "https://github.com/natefaubion/purescript-argparse-basic.git";
            rev = "cad9bd94a84ccf50c53be2f21ab5941a0a9ffeb9";
          };

        info =
          { version = "1.0.0";

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
      };

    event =
      let info = hyrule.purs-nix-info; in
      { src.git = { inherit (info) repo rev; };
        info = { inherit (info) version dependencies; };
      };

    cardano-transaction-lib =
      { repo = "https://github.com/Plutonomicon/cardano-transaction-lib.git";
        rev = "6d47a100781379b54debc801b4f13a21ea182c23";

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
      { src.git =
          { repo = "https://github.com/natefaubion/purescript-node-glob-basic.git";
            rev = "22b374b30537a945310fb8049f5bce1b51a7a669";
          };

        info =
          { version = "1.2.0";
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
    text-encoding =
      { src.git =
          { rev = "609ea0916f6817971d4a6c11b991b59715aaa096";
            repo = "https://github.com/AlexaDeWit/purescript-text-encoding.git";
          };
        info =
          { version = "1.0.0";
            dependencies = [
              arraybuffer-types
              console
              effect
              either
              exceptions
              functions
              partial
              prelude
              psci-support
              strings
              unicode
            ];
          };
      };

    undefined =
      { src.git =
          { rev = "4012dc06b58feae301140bc081135d0f24c432b0";
            repo = "https://github.com/bklaric/purescript-undefined.git";
          };
        info =
          { version = "1.0.2";
            dependencies = [
            ];
          };
  
      };
    untagged-union =
      { src.git =
          { rev = "364e172e759ebe722bd7ec12a599d532b527c0ef";
            repo = "https://github.com/jvliwanag/purescript-untagged-union.git";
          };
        info =
          { version = "0.3.0";
            dependencies = [
              ps-pkgs."assert"
              console
              effect
              foreign
              foreign-object
              literals
              maybe
              newtype
              psci-support
              tuples
              unsafe-coerce
            ];
          };
      };
  }
  // import ./official-package-set ps-pkgs
