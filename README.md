# purs-nix

[![Nix Flake](https://github.com/purs-nix/purs-nix/actions/workflows/nix-flake.yml/badge.svg)](https://github.com/purs-nix/purs-nix/actions/workflows/nix-flake.yml)

**purs-nix** is a tool for Nix-based PureScript development. It comes with both a Nix API, as well as a CLI you can use for development.

**This project is currently unstable**. That being said, most of the current API has been stable for some time, and we try to maintain backwards compatibility when introducing new APIs if possible.

## Gettings Started

- [Setup nix](docs/nix.md).
- Run `nix flake init -t github:purs-nix/purs-nix` in a new directory to initialize a new project.
- Run `nix develop` to enter a Nix shell with the `purs-nix` command added to your `PATH`.
- Run `purs-nix run` to see the output of the default project.

## Getting Started (non-flakes)

- [Install Nix](https://nixos.org/download.html#nix-quick-install)
- Copy the template from [templates/default](templates/default), and then replace `flake.nix` with [templates/shell.nix](templates/shell.nix).
- Run `nix-shell` to enter a Nix shell with the `purs-nix` command added to your `PATH`.
- Run `purs-nix run` to see the output of the default project.

## Learn

- [Documentation](docs/README.md)

- [Examples](examples)

## Package Set

**purs-nix** has its own package set, which is an extension of the [the official package set](https://github.com/purescript/package-sets) with the following differences:

- **Package namespaces:** We have package namespaces.

- **No global module namespace:** All packages are not required to compile with each other.

- **Single source of truth for package info:** You can define the version and dependencies of your package in its home repository and import it here. Nix is lazy so you will only ever download the information for the packages you need.

- **Packaging Foreign Dependencies:** purs-nix allows you to bundle Node.js (or arbitrary JavaScript code) in with your package so it'll work for people without them having to manage external dependencies.

- **Easy modification:** Using a modified version of the package set is as easy as forking it and changing the input of your flake (`"github:purs-nix/purs-nix"` -> `"github:<your-username>/purs-nix"`). If you put in a PR to add your package, using your fork of the package set is just as easy as using the official one, so you don't have to wait for the PR to be accepted to use your normal workflow.

- **Get package info:** Since package info can be imported from a foreign repository, we need a way to view the info of a package easily.

  - To view the info of a package, use `nix run github:purs-nix/purs-nix#package-info.<package-name>`. (a namespaced package will need to have quotes around its name, as it contains a `.`. You can do that like this: `.#package-info.'"<namespace>.<name>"'`.)

### Updating

To update the purs-nix package set:
```
$ cd official-package-set
$ ./generate.sh
```

## Migrating from [`spago`](https://github.com/purescript/spago)

There is a difference in the default [esbuild](https://esbuild.github.io/) [format](https://esbuild.github.io/api/#format) used by `purs-nix` and `spago`. The default used by `purs-nix` is [ESM format](https://esbuild.github.io/api/#format-esm). The default used by [`spago bundle-app`](https://github.com/purescript/spago#1-spago-bundle-app) is [IIFE format](https://esbuild.github.io/api/#format-iife). To match `spago`, specify [`bundle.esbuild.format = "iife"`](https://github.com/purs-nix/purs-nix/blob/master/docs/derivations.md#bundle), i.e.:
```
...
bundle =
  { ...
    esbuild = { format = "iife"; };
  }
...
```

## Contributing / Mirrors

Bug reports and patches are always welcome. Feature requests and new features are also welcome, but please consider discussing them with the maintainer first.

You can contribute through [GitHub](https://github.com/purs-nix/purs-nix) or [Codeberg](https://codeberg.org/purs-nix/purs-nix).

To set up these mirrors as push remotes for `origin`

```console
$ git remote set-url --add --push origin git@github.com:purs-nix/purs-nix.git
$ git remote set-url --add --push origin git@codeberg.org:purs-nix/purs-nix.git
```

And pull

```console
$ git fetch --all
```

## Actively Maintained

This project is actively maintained by [<img src="https://platonic.systems/logo.svg" height="25" width="25" alt=""> Platonic.Systems](https://platonic.systems)
