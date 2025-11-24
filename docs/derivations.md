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
- `esbuild`: Any attribute set you put in here will be converted to flags for `esbuild`.
  - Flags that don't have an argument but are merely present or not, are specified using a boolean value.
  - Flags that can be specified multiple times with different areguments are specified using a list of strings.
  - String are escaped for the shell, unless they start with `"`, `'`, or `$`.
- `main`: whether or not to automatically execute the main function of the module you're bundling.
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

## test

You access these derivations via the [test](./purs-nix.md#user-content-purs-test) attribute.

### run

`test.run {}` returns an executable that runs your test module's `main` function with Node.js. It takes the same arguments as [output](#output).

### check

`test.check {}` Is a derivation that runs `test.run`. It's a convenience function for adding your tests as a Nix flake check. It takes the same arguments as [output](#output).
