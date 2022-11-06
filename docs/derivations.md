# Creating Derivations

You can use purs-nix to make a derivations for your PureScript bundle, your compiler output, and to make executables. You access these derivations via different attributes on the output of the [purs](./purs-nix.md#purs) function.

## output

`output {}` is a derivation containing the compiler output for your project.

```
{ verbose-errors ? false
, comments ? false
, codegen ? null
, no-prefix ? false
, json-errors ? false
}
```

These arguments correspond to the flags you can pass to `purs compile`.

## bundle

`bundle {}` is a derivation containing the bundled code of the module `Main`.

```
{ esbuild # additional esbuild flags
  ? { format ? "esm"
    , log-level ? "warning"
    , outfile ? "main.js"
    }
, main ? true
, module ? "Main"
}

```

- `main`: whether or not to automatically execute the main function of the module you're bundling.
Note: turning this off will not disable the separate compiling of dependencies.
- `module`: The module to bundle.

## script

`script {}` is a derivation that is an executable that will run the `main` `Effect` of the module `Main`.

```
{ esbuild ? { minify ? true }
, module ? "Main"
}
```

- `esbuild`: Arguments to pass to `esbuild` when bundling.
- `module`: The module whose `main` function will be turned into an executable.
Note: turning this off will not disable the separate compiling of dependencies.

## app
`app { name = "my-command"; version = "1.0.0"; }` is a derivation containing an executable at `bin/my-command` that will execute the `main` `Effect` of the module `Main`.

```
{ name
, version ? null
, command ? name
, esbuild ? { minify ? true }
, module ? "Main"
}

```
- `name`: The `pname`/`name` of the derivation.
- `version`: The version of the derivation.
- `command`: The name of the executable.
- `esbuild`: Arguments to pass to `esbuild` when bundling.
- `module`: The module whose `main` function will be turned into an executable

## test

You access these derivations via the [test](./purs-nix.md#user-content-purs-test) attribute.


### run

`test.run {}` returns an executable that runs your test module's `main` function with Node.js. It takes the same arguments as [output](#output).

### check

`test.check {}` Is a derivation that runs `test.run`. It's a convenience function for adding your tests as a Nix flake check. It takes the same arguments as [output](#output).

## modules (deprecated)

You access these derivations via the [modules](./purs-nix.md#user-content-purs-modules) attribute set, using the name of your module as the attribute.

NOTE: If the module name contains a `.`, it will require quotation marks around its name (e.g. `modules."Foo.Bar.Main".bundle`)

There are four different attributes for each module.

### output
```
{ verbose-errors ? false
, comments ? false
, codegen ? null
, no-prefix ? false
, json-errors ? false

, incremental ? false
}
```

- `incremental`: Whether or not to build the modules incrementally. This will almost certainly cause your build times to be slower, but may give some improvements when iterating on certain modules in very large projects.
Note: turning this off will not disable the separate compiling of dependencies.

The upper options correspond to the flags you can pass `purs compile`.

`modules.Module.output {}` is a derivation containing the compiler output for all your project's dependencies plus all of `Module`'s local dependencies.

### bundle

```
{ esbuild # additional esbuild flags
  ? { format ? "esm"
    , log-level ? "warning"
    , outfile ? "main.js"
    }
, main ? true
, incremental ? false
}

```

- `esbuild`: additional esbuild flags
    - `format`: Specifies the [esbuild format](https://esbuild.github.io/api/#format). Default is [ESM format](https://esbuild.github.io/api/#format-esm). Note default for [`spago bundle-app`](https://github.com/purescript/spago#1-spago-bundle-app) is [IIFE format](https://esbuild.github.io/api/#format-iife); specify this with `"iife"`.
- `main`: whether or not to automatically execute the main function of the module you're bundling.
- `incremental`: whether or not to build the modules incrementally. This will almost certainly cause your build times to be slower, but may give some improvements when iterating on certain modules in very large projects.
Note: turning this off will not disable the separate compiling of dependencies.

`modules.Module.bundle {}` is a derivation containing the bundled code of the module `Module`.

### script

```
{ esbuild ? { minify ? true }
, incremental ? false
}
```
- `esbuild`: Arguments to pass to `esbuild` when bundling.
- `incremental`: Whether or not to build the modules incrementally. This will almost certainly cause your build times to be slower, but may give some improvements when iterating on certain modules in very large projects.
Note: turning this off will not disable the separate compiling of dependencies.

- `incremental`: Whether or not to build the modules incrementally. This will almost certainly cause your build times to be slower, but may give some improvements when iterating on certain modules

`modules.Module.script {}` is a derivation that is an executable that will run the `main` `Effect` of the module `Module`.

### app

```
{ name
, version ? null
, command ? name
, esbuild ? { minify ? true }
, incremental ? false
}
```
- `name`: The `pname`/`name` of the derivation.
- `version`: The version of the derivation.
- `command`: The name of the executable.
- `esbuild`: Arguments to pass to `esbuild` when bundling.
- `incremental`: Whether or not to build the modules incrementally. This will almost certainly cause your build times to be slower, but may give some improvements when iterating on certain modules in very large projects.
Note: turning this off will not disable the separate compiling of dependencies.

`modules.Module.app { name = "my-command"; version = "1.0.0"; }` is a derivation containing an executable at `bin/my-command` that will execute the `main` `Effect` of the module `Module`.

## test

You access these derivations via the [test](./purs-nix.md#user-content-purs-test) attribute.


### run

`test.run {}` returns an executable that runs your test module's `main` function with Node.js. It takes the same arguments as [output](#output).

### check

`test.check {}` Is a derivation that runs `test.run`. It's a convenience function for adding your tests as a Nix flake check. It takes the same arguments as [output](#output).
