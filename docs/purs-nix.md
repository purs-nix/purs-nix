## purs-nix (nix)

The flake for this repository is used inside your project's flake to set up your PureScript environment and/or to compile/bundle your PureScript code in a Nix derivation. The `outputs` of the flake has a `__functor` attribute, so it can be used as a function. It takes the following arguments:

```
{ system
, pkgs ? (import ./inputs.nix).pkgs system
}
```
and returns an attribute set with the following attributes:
- `build`: A function for creating ad hoc PureScript packages. It's argument is a [package description attributes set](adding-packages.md) with the `name` attribute required.
- `ps-pkgs`: The attribute set of all non-namespaced PureScript pacakges.
- `ps-pkgs-ns`: The attribute set of all namespaced PureScript packages.
- `purs`: A function for building your project.
- `purescript`: The PureScript package used for everything by default.
- `purescript-language-server`: A build of purescript-language-server that detects `flake.nix`/`shell.nix` files as an indication of the workspace root being a PureScript project.
- `licenses`: This is included for convenience so you can pass the returned attribute set into a [package.nix](adding-packages.md#using-info).

### purs

`purs` takes the following arguments:

```
{ dependencies ? []
, test-dependencies ? []
, srcs ? null
, nodejs ? pkgs.nodejs
, purescript ? easy-purescript-nix.purescript
}
```

- `dependencies`: A list of all your project's dependencies. You can get these from `ps-pkgs`/`ps-pkgs-ns`.
- `test-dependencies`: A list of all your projects's dependencies that are only needed for testing.
- `srcs`: A list of Nix path values pointing to your PureScript source directories. This is not required if you're only using the Nix shell.
- `nodejs`: The Node.js package to use.
- `purescript`: The PureScript package to use.

and returns an attribute set with the following attributes:
- <span id="purs-modules">`modules`</span>: An attribute set with an attribute for each local module in your project. Use this to incorporate your PureScript project into bigger nix builds. Read more about this [here](derivations.md).
- `command`: A functions that builds the `purs-nix` command which you can then add to your Nix shell.

### command
`command` takes the following arguments: (Note: they all have defaults so often times you will only need to us `command {}`)

```
{ srcs ? [ "src" ]
, output ? "output"
, bundle ? {}
, compile ? {}
, package ? {}
, test ? "test"
, test-module ? "Test.Main"
, name ? "purs-nix"
}
```

- `srcs`: A list of strings representing the paths of your project's source directories.
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

- `package`: The options that will be used to generate a `bower.json` with `purs-nix bower`.

  ```
  { dependencies
  , pursuit
  }
  ```
    - `dependencies`: A list of your project's dependencies.
	- `pursuit`: An attribute set of all the additional information required to make a `bower.json` in order to publish to Pursuit.

	  ```
	  { name
	  , repo
	  , license
	  }
	  ```
	  - `name`: The name of the package in [the registry](https://github.com/purescript/registry) (without the `purescript-`).
	  - `repo`: The url of the git repository.
	  - `license`: One of [these licenses](https://github.com/NixOS/nixpkgs/blob/master/lib/licenses.nix).

- `test`: A string representing the path of your testing code.
- `test-module`: The name of the module whose `main` function will be run when using `purs-nix test`.
- `name`: The name of the command. Use this if you need to create commands with different configurations.

## purs-nix (command)
Run `purs-nix` (no argument) to see the documentation. (or look near the bottom of [this file](/purs-nix-command.nix))
