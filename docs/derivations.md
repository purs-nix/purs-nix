# Creating Derivations

You can use **purs-nix** to make a derivations for your PureScript bundle, your compiler output, and to make executables. They all use incremental compiling, so you don't have you recompile your entire project every time you make a small change.

You access these derivations via the [modules](./purs-nix.md#purs-modules) attribute set, using the name of your module as the attribute.

NOTE: If the module name contains a `.`, it will require quotation marks around its name (e.g. `modules."Foo.Bar.Main".bundle`)

There are three different attributes for each module.

### output
```
{ verbose-errors ? false
, comments ? false
, codegen ? null
, no-prefix ? false
, json-errors ? false
}
```

These correspond to the flags you can pass `purs compile`. `modules.Module.output {}` is a derivation containing the compiler output for all your project's dependencies plus all of `Module`'s dependencies.

### bundle

```
{ esbuild # additional esbuild flags
  ? { format ? "esm"
    , log-level ? "warning"
    , outfile ? "main.js"
    }
, main ? true
}

```

- `main`: whether or not to automatically execute the main function of the module you're bundling.

`modules.Module.bundle {}` is a derivation containing the bundled code from the module `Module`.

### app

```
{ name
, version ? null
, command ? name
}
```
- `name`: The `pname`/`name` of the derivation.
- `version`: The version of the derivation.
- `command`: The name of the executable.

`modules.Module.app { name = "my-command"; version = "1.0.0"; }` is a derivation containing an executable at `bin/my-command` that will execute the `main` `Effect` of the module `Module`.
