## `FlakePackageData`
```
{ src.flake.url;
  src.flake.package; # "default"
}

```

- `flake.url`: `String`

  the fully qualified flake url

- `flake.package`: `String`

  the flake package to use

The package should be a purs-nix package built with [`build`](adding-packages.md#build). We use this instead of using `builtins.getFlake` directly so that the `purs-nix` command has more information about where the package came from.

### Example
```nix
{ src.flake.url = "github:purs-nix/purescript-markdown-it/4b90edc070c9ede0ee045224e0c64f9c502c3bf7"; }
```

## `ForeignPath`
```
{ src; }
```

- `src`: `Path`

  a path to a directory containing foreign code.


### Example
```nix
{ src = ./foreign-js; }
```

## `GitSrc`
```
{ git.repo;
  git.rev;
  git.ref; # optional
}

```

- `git.repo`: `String`

  URL of the repo

- `git.rev`: `String`

  commit hash

- `git.ref`: `String`

  a git ref, e.g. a branch

### Example
```nix
{ git.repo = "https://github.com/purescript/purescript-arrays.git";
  git.rev = "d20bae2f76db6cf29b7b75e26e82b8a54c32295e";
}
```

## `Info`
```
{ version;      # optional
  dependencies; # optional
  src;          # optional
  install;      # optional
  foreign;      # optional
  pursuit;      # optional
}
```
- `version`: `String`

  the version of the package with no `v-` prefix

- `dependencies`: `[String | Package]`

  The dependencies of your project. You generally want to use a string corresponding to the name of the package, but sometimes you want to use the package itself. You can read about string vs package dependencies [here](modifying-package-set.md#generating-overlays-from-packages).

- `src`: `String`

  This is the 'src' directory for the package. It is set to `"src"` by default.

- `install`: `String`

  You can use this if you need a custom install script to get together all the source files for your package. By default it just symlinks to the value of `src`.

- `foreign`: `{ Module =` [`NodeModules`](#NodeModules) `|` [`ForeignPath`](#ForeignPath) `}`
  An attrset whose keys are PureScript module names, and whose values correspond to the foreign code available to each module. You can read more about using foreign code [here](foreign.md).

- `pursuit`: [`Pursuit`](#Pursuit)

  info that is used to publish a package to pursuit


### Example
```nix
{ version = "0.5.0";
  dependencies =
    [ "effect"
      "prelude"
    ];

  foreign.MyModule.node_modules = node_modules;
};
```

## `InfoArgs`
```
{ build
, ps-pkgs
, ps-pkgs-ns
, licenses
, check-arg
}
```
- `build`: the purs-nix [build](adding-packages.md#build) function
- `ps-pkgs`: the purs-nix package set
- `ps-pkgs-ns`: the purs-nix namespaced package set
- `licenses`: the [nix license values](https://github.com/NixOS/nixpkgs/blob/master/lib/licenses.nix)
- `check-arg`: something passed in to make sure your function uses `...`, so it doesn't break if a new argument is added to this list.

## `NodeModules`
```
{ node_modules; }
```

- `node_modules`: `Path`

  a path to a node_modules directory

## `PackageData`

[`NormalPackageData`](#NormalPackageData) | [`FlakePackageData`](#FlakePackageData)

## `NormalPackageData`
```
{ name;
  src;
  info;
}
```

- `name`: `String`

  the name of your package

- `src`: [`GitSrc`](#GitSrc) | `Path`

  the source of the package

- `info`: [`Info`](#Info) | `Path (`[`InfoArgs`](#InfoArgs) `->` [`Info`](#Info)`)`

  Information about the package. You can pass the data in directly, or specify an absolute path relative to the package's source.

### Example
```
{ name = "arrays";

  src.git =
    { repo = "https://github.com/purescript/purescript-arrays.git";
      rev = "d20bae2f76db6cf29b7b75e26e82b8a54c32295e";
    };

  info =
   { version = "7.0.0";

     dependencies =
       [ "bifunctors"
         "control"
         "foldable-traversable"
         "maybe"
         "nonempty"
         "partial"
         "prelude"
         "st"
         "tailrec"
         "tuples"
         "unfoldable"
         "unsafe-coerce"
       ];
   }
};
```

## `Pursuit`
```
{ name; # config.name
  repo;
  license;
}
```
- `name`: `String`

  the name of the package on Pursuit

- `repo`: `String`

  the Git repo that shows up on Pursuit

- `license`: `License`

  use one of the values in `lib.license`
