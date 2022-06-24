{ ps-pkgs, ... }:
  with ps-pkgs;
  { argparse-basic =
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
      { src.git =
          { repo = "https://github.com/mikesol/purescript-event.git";
            rev = "1ce0eed386b898cc925ad14dd2b15e1b9737dd93";
          };

        info =
          { version = "1.6.6";

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
      { src.git =
          { repo = "https://github.com/natefaubion/purescript-node-workerbees.git";
            rev = "5ab52953b64f05b97e8605755708e483c3c44722";
          };

        info =
          { version = "0.1.2";

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
      };

    purescript-language-cst-parser =
      { src.git =
          { repo = "https://github.com/natefaubion/purescript-language-cst-parser.git";
            rev = "0b2410c25f638dcf00089c206d9e4af65f5845d0";
          };

        info =
          { version = "0.9.0";

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
      };

    purescript-react-basic-hooks =
      { src.git =
          { repo = "https://github.com/spicydonuts/purescript-react-basic-hooks";
            rev = "50575f50a68dc8b756b378674dea5c568b8c109d";
          };

        info =
          { version = "8.0.0";

            dependencies =
              [ aff
                aff-promise
                bifunctors
                console
                control
                datetime
                effect
                either
                exceptions
                foldable-traversable
                functions
                indexed-monad
                integers
                maybe
                newtype
                now
                nullable
                ordered-collections
                prelude
                react-basic
                refs
                tuples
                type-equality
                unsafe-coerce
                unsafe-reference
                web-html
              ];
          };
      };
  }
  // import ./official-package-set ps-pkgs
