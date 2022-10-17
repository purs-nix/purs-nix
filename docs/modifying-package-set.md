# Modifying The Package Set

You can modify the `ps-pkgs/ps-pkgs-ns` output using overlays. An overlay is a function of two arguments, [traditionally called](https://nixos.org/manual/nixpkgs/stable/#sec-overlays-definition) `self` and `super` (`final`and `prev` [are also common](https://nixos.org/manual/nixpkgs/stable/#how-to-override-a-lua-package-using-overlays)). This function returns an attribute set of either packages (from the package set or built with [build](adding-packages.md#build)) or [package descriptions](adding-packages.md#package-set-git), that get merged onto the base package set. Overlays get applied in the order they are listed.

```nix
purs-nix
  { inherit system;

    overlays =
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

        inputs.my-overlay
      ];
  }
```

# Transitive Dependency Conflicts

Sometimes a package imported from a flake might lock a particular version of a dependency that is different than the one in the package set, or from another flake package's dependency. PureScript only supports a single version of each package, so this is an issue. By default, purs-nix essentially just picks one and hopes for the best. However, if you find yourself in a situation where purs-nix is not choosing the desired version of a transitive dependency, you can overlay that decision by adding said version to the direct dependency list.

In this example, `foo` and `baz` are external packages that pin their own dependencies, so the problem cannot be fixed by overlays.

```nix
purs-nix.purs
  { dependencies =
      with purs-nix.ps-pkgs;
      [ console
        effect
        prelude

        # depends on parsing-lib version A
        # but works with parsing-lib version B
        foo.bar-parser

        # depends on parsing-lib version B
        # does not work with parsing-lib version A
        baz.qux-parser

        # purs-nix is choosing version A
        # so we force it to choose version B
        baz.parsing-lib
      ];
  }
```

