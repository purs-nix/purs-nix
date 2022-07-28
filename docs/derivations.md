# Creating Derivations

You can use **purs-nix** to make a derivations for your PureScript bundle, your compiler output, and to make executables. They all use incremental compiling, so you don't have you recompile your entire project every time you make a small change.

You access these derivations via the [modules](./purs-nix.md#user-content-purs-modules) attribute set, using the name of your module as the attribute, or using the [test](./purs-nix.md#user-content-purs-test) attribute.

NOTE: If the module name contains a `.`, it will require quotation marks around its name (e.g. `modules."Foo.Bar.Main".bundle`)

There are four different attributes for each module.

### output
```
{ verbose-errors ? false
, comments ? false
, codegen ? null
, no-prefix ? false
, json-errors ? false

, incremental ? true
, zephyr ? null
}
```

- `incremental`: Whether or not to build the modules incrementally. This will cause the initial build time to be much slower, but will generally increase the build time after the individual modules have been initially built.
- `zephyr`: An entry point to use with zephyr for the output.

The upper options correspond to the flags you can pass `purs compile`.

`modules.Module.output {}` is a derivation containing the compiler output for all your project's dependencies plus all of `Module`'s local dependencies.

`test.output {}` is a derivation containing the compiler output for all the project's dependencies, test dependencies, and all of the local dependencies for the test module.

### bundle

```
{ esbuild # additional esbuild flags
  ? { format ? "esm"
    , log-level ? "warning"
    , outfile ? "main.js"
    }
, main ? true
, incremental ? true
, zephyr ? true
}
```

- `main`: whether or not to automatically execute the main function of the module you're bundling.
- `incremental`: whether or not to build the modules incrementally. This will cause the initial build time to be much slower, but will generally increase the build time after the individual modules have been initially built.
- `zephyr`: whether or not to use `zephyr` to drastically shrink the bundle size. Since purs-nix use `esbuild`, it does not get DCE on PureScript 0.14 output.

`modules.Module.bundle {}` is a derivation containing the bundled code of the module `Module`.

`test.bundle {}` is a derivation containing the bundled code of the test module.

### script

```
{ esbuild ? { minify ? true; }
, incremental ? true
}
```
- `esbuild`: Arguments to pass to `esbuild` when bundling.
- `incremental`: Whether or not to build the modules incrementally. This will cause the initial build time to be much slower, but will generally increase the build time after the individual modules have been initially built.

`modules.Module.script {}` is a derivation that is an executable that will run the `main` `Effect` of the module `Module`.

`test.script {}` is a derivation that is an executable that will run the `main` `Effect` of your test suite.

### app

```
{ name
, version ? null
, command ? name
, esbuild ? { minify ? true; }
, incremental ? true
, zephyr ? true
}
```

- `name`: The `pname`/`name` of the derivation.
- `version`: The version of the derivation.
- `command`: The name of the executable.
- `esbuild`: Arguments to pass to `esbuild` when bundling.
- `incremental`: Whether or not to build the modules incrementally. This will cause the initial build time to be much slower, but will generally increase the build time after the individual modules have been initially built.
- `zephyr`: Whether or not to use `zephyr` to drastically shrink the bundle size. Since purs-nix use `esbuild`, it does not get DCE on PureScript 0.14 output.

`modules.Module.app { name = "my-command"; version = "1.0.0"; }` is a derivation containing an executable at `bin/my-command` that will execute the `main` `Effect` of the module `Module`.

There is no `test.app` function.
