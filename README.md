# purs-nix

**purs-nix** is a project which aims to allow you to use the entire PureScript ecosystem with nothing but Nix. It's currently only for use with Nix flakes. For help, you can reach out on the [FP](https://funprog.zulipchat.com/#narrow/stream/214955-PureScript)/[Nix](https://nixcommunity.zulipchat.com/#narrow/stream/285116-PureScript) Zulips.

## Gettings Started

- [Setup nix](docs/nix.md).
- Run `nix flake init -t github:ursi/purs-nix` in a new directory to initialize a new project.
- Run `nix develop` to enter a Nix shell with the `purs-nix` command added to your path.
- Run `purs-nix run` to see the output of the default project.

## [Documentation](docs/README.md)

## Packages

**purs-nix** does not use the package set located at [purescript/package-sets](https://github.com/purescript/package-sets). We maintain our own package set here in this repository. This results in the following differences:
- **Package namespaces:** We have package namespaces.
- **No global module namespace**
- **Single source of truth for package info:** You can define the version and dependencies of your package in its home repository and import it here. Nix is lazy so you will only ever download the information for the packages you need.
- **Easy modification:** Using a modified version of the package set is as easy as forking it and changing the input of your flake (`"github:ursi/purs-nix"` -> `"github:<your-username>/purs-nix"`). If you put in a PR to add your package, using your fork of the package set is just as easy as using the official one, so you don't have to wait for the PR to be accepted to use your normal workflow.
- **Get package info:** Since package info can be imported from a foreign repository, we need a way to view the info of a package easily.
  - To view the info of a non-namespaced package, use `nix run github:ursi/purs-nix#package-info.<pacakge-name>`.
  - To view the info or a namespaced package, use `nix run github:ursi/purs-nix#package-info-ns.<namespace>.<package-name>`.

## TODO

This is an incomplete list of things that are currently planned.

- **FAQ:** I'd like to have an FAQ, but first I see which Qs are FA'd.
- **More commands:** In the short term I would like to add a watching mechanism and a wrapper around `purs docs`. In the long term I would like to have a nice API for everything that can currently be done with other tools. (Note: You can already generate documentation pretty easily: `purs-nix srcs docs`)
- **Package replacing:** I'd like to have an easy API for replacing one package with another, so instead of having to use a forked version of the package set, you can add your version of a package in your namespace, and then just replace the official version with yours inside your project. Something like: `replace-package tuple ursi.tuple dependencies`.
- **Module renaming:** Since there is no more global module namespace, you may find that two packages have the same module name and cannot compile together. I think arbitrary module renaming should be possible, so I plan to explore this as a solution. Something like: `html-module.rename-module "Html" "HtmlModule.Html"`.
- **Support Nix stable:** Currently this is designed for flakes users. I would like to be able to have a nice API for people that use Nix stable as well. In the mean time you may have some luck using [flake-compat](https://github.com/edolstra/flake-compat).
