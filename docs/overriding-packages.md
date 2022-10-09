# Overriding The Package Set

You can modify the `ps-pkgs/ps-pkgs-ns` output using overrides. An override is a function of two arguments, traditionally called `self`/`final` and `super`/`prev`. This function returns an attribute set of either packages or [package descriptions](adding-packages.md#package-set-git)

```
purs-nix
  { inherit system;

    overrides =
      [ (self: super:
           { string-parsers = inputs.string-parsers-old

             "my.prelude" =
                { src.git =
                    { repo = "https://github.com/me/prelude.git";
                      rev = "0000000000000000000000000000000000000000";
                    };

                  info = ./package.nix;
                };
           }
        )

        inputs.my-override
      ];
  }
```

# Ensuring a Particular Version

To override a package the package set, simply add a package with the same name to your dependencies.

```
let
  prelude-override =
    purs-nix.build
      { name = "prelude";
        src.path = /home/me/my-prelude;
        info = /package.nix;
      };
in
purs-nix.purs
  { dependencies =
      with purs-nix.ps-pkgs;
      [ console
        effect
        prelude-override
      ];
  }
```

