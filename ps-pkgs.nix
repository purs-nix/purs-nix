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
  }
  // import ./official-package-set ps-pkgs
