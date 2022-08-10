# purs-nix

**purs-nix** is a tool for Nix-based PureScript development. It comes with both a Nix API, as well as a CLI you can use for development.

**This project is currently unstable**. That being said, most of the current API has been stable for some time, and we try to maintain backwards compatibility when introducing new APIs if possible.

## Gettings Started (flakes)

- [Setup nix](docs/nix.md).
- Run `nix flake init -t github:purs-nix/purs-nix` in a new directory to initialize a new project.
- Run `nix develop` to enter a Nix shell with the `purs-nix` command added to your `PATH`.
- Run `purs-nix run` to see the output of the default project.

## Getting Started (Nix stable)

- [Install Nix](https://nixos.org/download.html#nix-quick-install)
- Copy the template from [templates/default](templates/default), and then replace `flake.nix` with [templates/shell.nix](templates/shell.nix).
- Run `nix-shell` to enter a Nix shell with the `purs-nix` command added to your `PATH`.
- Run `purs-nix run` to see the output of the default project.

## Learn

- [Documentation](docs/README.md)

- [Examples](examples)

## Package Set

**purs-nix** has it's own package set, which is an extension of the [the official package set](https://github.com/purescript/package-sets) with the following differences:

- **Package namespaces:** We have package namespaces.

- **No global module namespace:** All packages are not required to compile with each other.

- **Single source of truth for package info:** You can define the version and dependencies of your package in its home repository and import it here. Nix is lazy so you will only ever download the information for the packages you need.

- **Packaging Foreign Dependencies:** purs-nix allows you to bundle Node.js (or arbitrary JavaScript code) in with your package so it'll work for people without them having to manage external dependencies.

- **Easy modification:** Using a modified version of the package set is as easy as forking it and changing the input of your flake (`"github:purs-nix/purs-nix"` -> `"github:<your-username>/purs-nix"`). If you put in a PR to add your package, using your fork of the package set is just as easy as using the official one, so you don't have to wait for the PR to be accepted to use your normal workflow.

- **Get package info:** Since package info can be imported from a foreign repository, we need a way to view the info of a package easily.

  - To view the info of a non-namespaced package, use `nix run github:purs-nix/purs-nix#package-info.<pacakge-name>`.

  - To view the info or a namespaced package, use `nix run github:purs-nix/purs-nix#package-info-ns.<namespace>.<package-name>`.

## TODO

This is an incomplete list of things that are currently planned.

- **FAQ/How To's:** I'd like to have an FAQ, but first I see which Qs are FA'd.
- **Module renaming:** Since there is no more global module namespace, you may find that two packages have the same module name and cannot compile together. I think arbitrary module renaming should be possible, so I plan to explore this as a solution. Something like: `html-module.rename-module "Html" "HtmlModule.Html"`. I'd also like to add opt-in module name prefixing for indirect dependencies, to guarantee they never collide.

## Actively Maintained

This project is actively maintained by [<img src="https://platonic.systems/logo.svg" height="25" width="25" alt="Platonic Systems" /> Platonic.Systems](https://platonic.systems)
