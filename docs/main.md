# Documentation

## purs-nix (nix)

The flake for this repository is used inside your project's flake to set up your PureScript environment and/or to compile/bundle your PureScript code in a Nix derivation. The `outputs` of the flake has a `__functor` attribute, so it can be used as a function. It takes the following arguments:

```
{ system, pkgs ? nixpkgs.legacyPackages.${system}}
```
and returns a set with the following attributes:
- `ps-pkgs`: The set of all non-namespaced PureScript pacakges.
- `ps-pkgs-ns`: The set of all namespaced PureScript packages.
- `purs`: A function for building your project.

### purs

`purs` takes the following arguments:

```
{ dependencies ? []
, src
, nodejs ? pkgs.nodejs
, purescript ? pkgs.purescript
}
```

- `dependencies`: A list of all your project's dependencies. You can get these from `ps-pkgs`/`ps-pkgs-ns`.
- `src`: A Nix path value pointing to your PureScript source directory.
- `nodejs`: The Node.js package to use.
- `purescript`: The **purescript** package to use.

and returns a set with the following attributes:
- `modules`: A set with an attribute for each local module in your project. Use this to incorporate your PureScript project into bigger nix builds. Read more about this [here](derivations.md).
- `shell`: A functions that builds the `purs-nix` command which you can then add to your Nix shell.

### shell
`shell` takes the following arguments: (Note: they all have defaults so often times you will only need to us `shell {}`)

```
{ src ? "src"
, output ? "output"
, bundle ? {}
, compile ? {}
, nodejs ? pkgs.nodejs
, purescript ? pkgs.purescript
}
```

- `src`: A string representing the path of your PureScript source directory.
- `output`: The name of the folder that `purs compile` will create.
- `bundle`: The options that will configure the `purs bundle` command.

  ```
  { module ? "Main"
  , output ? "index.js"
  , main ? module
  , namespace ? null
  , source-maps ? false
  , debug ? false
  }
  ```

- `compile`: The options that will configure the `purs compile` command.

  ```
  { verbose-errors ? false
  , comments ? false
  , codegen ? null
  , no-prefix ? false
  , json-errors ? false
  }
  ```

- `nodejs`: The Node.js package to use.
- `purescript`: The PureScript package to use.

## purs-nix (command)
Just run `purs-nix` (no argument) to see the documentation for the `purs-nix` command in your project.
