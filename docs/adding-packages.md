# Adding Packages

Packages are added by adding a package description set to either [ps-pkgs.nix](/ps-pkgs.nix) or [ps-pkgs-ns.nix](/ps-pkgs-ns.nix).\
There are two formats for a package description set:
1. Include all of the information about the package directly in the set:
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
       info = /package.nix;
     }
   ```

The following attributes are required:\
`repo`, `rev`

The following attributes are optional:\
`dependencies`, `info`, `ref`, `src`, `version`

## Using `info`
If you're using a file in your own repository for your package info, you need to make sure it's a function that uses the `...` syntax. This is to leave ourselves open for passing in new arguments in the future without breaking everything.\
Here's an example:
```nix
{ ps-pkgs, ... }:
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
