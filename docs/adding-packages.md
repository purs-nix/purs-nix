# Adding Packages

Packages are added by adding a package description attributes set to either [ps-pkgs.nix](/ps-pkgs.nix) or [ps-pkgs-ns.nix](/ps-pkgs-ns.nix), or by adding your package to the [official package set](https://github.com/purescript/package-sets) and [updating the generated](/official-package-set) nix.\
There are two formats for package description attributes sets:
1. Include all of the information about the package directly in the attribute set:
   ```
   arrays =
     { version = "6.0.0";
       repo = "https://github.com/purescript/purescript-arrays.git";
       rev = "5b71501b04f96cee4234447b35d62d041317f64b";

       dependencies =
         [ bifunctors
           control
           foldable-traversable
           maybe
           nonempty
           partial
           prelude
           st
           tailrec
           tuples
           unfoldable
           unsafe-coerce
         ];
     };
   ```
2. Include only the repo and hash of your package, and a path relative to your repo where the rest of the package information can be found:
   ```
   arrays =
     { repo = "https://github.com/purescript/purescript-arrays.git";
       rev = "5b71501b04f96cee4234447b35d62d041317f64b";
       info = /package.nix; # note the absolute path
     }
   ```

The following attributes are required:
- `repo`
- `rev`

The following attributes are optional:
- `dependencies`
- `info`
- `name`
- `pursuit`
- `ref`
- `src` (default: `"src"`)
- `install` (default: `"ln -s $src/${src} $out"`)
- `version`

## <span id="using-info">Using `info`</span>
If you're using a file in your own repository for your package info, you need to make sure it's a function that uses the `...` syntax. This is to leave ourselves open for passing in new arguments in the future without breaking everything.\
Here's an example:
```nix
{ ps-pkgs, ... }:
  with ps-pkgs;
  { version = "6.0.0";

    dependencies =
      [ bifunctors
        control
        foldable-traversable
        maybe
        nonempty
        partial
        prelude
        st
        tailrec
        tuples
        unfoldable
        unsafe-coerce
      ];
  }
```

The arguments that are currently passed are:\
`ps-pkgs` `ps-pkgs-ns` [`licenses`](https://github.com/NixOS/nixpkgs/blob/master/lib/licenses.nix)
