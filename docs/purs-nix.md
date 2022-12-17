## purs-nix (nix)

**purs-nix** is a nix library used to set up your PureScript environment and/or to compile/bundle your PureScript code in a Nix derivation. The `outputs` of the flake has a `__functor` attribute, so it can be used as a function. It takes the following arguments:

```
{ defaults ? {}
, overlays ? []
, system
}
```

- `defaults`: Arguments to be applied to everything by default. Currently the only argument is `compile`, accepting [these](purs-nix.md#compile) arguments.
- `overlays`: A list of [overlays](overriding-packages.md) to modify `ps-pkgs`/`ps-pkgs-ns`.
- `system`: The system you're building on.

and returns an attribute set with the following attributes:
- `build`: A function for creating ad hoc PureScript packages. See: [build](adding-packages.md#user-content-build).
- `build-set`: A function for creating ad hoc PureScript packages en masse. See: [build](adding-packages.md#user-content-build-set).
- `esbuild`/`purescript`: The esbuild/PureScript packages used for everything by default.
- `ps-pkgs`: The attribute set of all PureScript pacakges.
- `ps-pkgs-ns`: The attribute set of all namespaced PureScript packages, accessed by `ps-pkgs-ns.<namespace>.<package>`.
- `purs`: A function for building your project.
- `licenses`: This is included for convenience so you can pass the returned attribute set into a [package.nix](adding-packages.md#user-content-using-info).

### purs

`purs` takes the following arguments:

```
{ dependencies ? []
, test-dependencies ? []
, dir ? null
, srcs ? lib.mapNullable (_: [ "src" ]) dir
, test ? lib.mapNullable (_: "test") dir
, test-module ? "Test.Main"
, nodejs ? pkgs.nodejs
, purescript ? easy-purescript-nix.purescript
, foreign ? {}
}
```

- `dependencies`: A list of all your project's dependencies.
- `test-dependencies`: A list of all your projects's dependencies that are only needed for testing.
- `dir`: The directory of the project. This is not required if you're only using the Nix shell, or if you specify `srcs` with path values.
- `srcs`: Either a list of strings corresponding to directories in `dir` or a list of path values pointing to PureScript source directories. This is not required if you're only using the Nix shell.
- `test`: Either a string corresponding to a directory in `dir` or a path pointing to a PureScript source directory.
- `test-module`: The name of the module whose `main` function runs the test suit.
- `nodejs`: The Node.js package to use.
- `purescript`: The PureScript package to use.
- `foreign`: See the [documentation](foreign.md).

and returns an attribute set with the following attributes:

- `output`: A function for building a derivation from the compiler output.
- `bundle`: A function for building a derivation from the bundling of a particular module.
- `script`: A function for building a derivation that is an executable.
- `app`: A function for building a derivation with an executable in `/bin`.
- `test`: An attribute set of functions for building test-related things.
- `command`: A functions that builds the `purs-nix` command which you can then add to your Nix shell.
- <span id="user-content-purs-test">`test`</span>: An attribute set with functions for derivations corresponding to the test module. Read more [here](derivations.md).
- `dependencies`: A list of all the dependencies (transitive closure) of your project. This is exposed out of convenience for when you find yourself using a tool that needs information that can be derived from this.
- <span id="user-content-purs-modules">`modules` **(deprecated)** </span>: An attribute set with an attribute for each local module in your project. Use this to incorporate your PureScript project into bigger nix builds. Read more [here](derivations.md).

Read more about `output`, `bundle`, `script`, `app`, and `test` [here](derivations.md).

### command
`command` takes the following arguments: (Note: they all have defaults so often times you will only need to us `command {}`)

```
{ srcs ? see below
, output ? "output"
, bundle ? {}
, compile ? {}
, package ? {}
, test ? see below
, test-module ? see below
, name ? "purs-nix"
}
```

- `srcs`: A list of strings representing the paths of your project's source directories. The default value is the `srcs` value provided to `purs` if you're using the `dir` + `srcs` options, otherwise it's `[ "src" ]`.
- `output`: The name of the folder that `purs compile` will create.
- `bundle`: The options that will configure the `purs-nix bundle` command.

  ```
  { esbuild # additional esbuild flags
    ? { format ? "esm"
      , log-level ? "warning"
      , outfile ? "main.js"
      }
  , main ? true # import and call `main()`
  , module ? "Main"
  }
  ```

- <span id="user-content-compile">`compile`</span>: The options that will configure the `purs compile` command.

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

- `test`: A string representing the path of your testing code. The default value is the `test` value provided to `purs` if you're defining `dir`, otherwise it's `"test"`.
- `test-module`: The name of the module whose `main` function will be run when using `purs-nix test`. The default value is the `test-module` value provided to `purs`.
- `name`: The name of the command. Use this if you need to create commands with different configurations.

## purs-nix (command)
Run `purs-nix` (no argument) to see the documentation. (or look near the bottom of [this file](/purs-nix-command.nix))
