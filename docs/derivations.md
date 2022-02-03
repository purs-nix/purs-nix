# Creating Derivations

You can use **purs-nix** to make a derivations for your PureScript bundle, your compiler output, and to make executables. They all use incremental compiling, so you don't have you recompile your entire project every time you make a small change.

You access these derivations via the [modules](./purs-nix.md#purs-modules) attribute set, using the name of your module as the attribute.

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
{ main ? true
, namespace ? null
}

```

- `main`: whether or not to automatically execute the main function of the module you're bundling.
- `namespace`: The name of the JavaScript object that contains your PureScript code in the bundle.

`modules.Module.bundle {}` is a derivation containing the bundled code from the module `Module`.

### app

```
{ name
, version ? null
, command ? name
, auto-flags ? false
}
```
- `name`: The `pname`/`name` of the derivation.
- `version`: The version of the derivation.
- `command`: The name of the executable.
- `auto-flags`: Automatically add certain flags to the executable. Currently the only flag that's added is `--version`.

`modules.Module.app { name = "my-command"; version = "1.0.0"; }` is a derivation containing an executable at `bin/my-command` that will execute the `main` `Effect` of the module `Module`.
