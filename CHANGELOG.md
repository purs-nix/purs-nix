## 2022-10-7
### Breaking: Probably Not

- Namespaced packages are now just normal packages that have a name following the schema `<namespace>.<name>`. You can now access them in the normal `ps-pkgs` package set. `ps-pkgs-ns` still exists, but it's just generated from `ps-pkgs` now by looking at package names.

- `nix run purs-nix#package-info-ns` has been removed. You can now use `nix run purs-nix#package-info.'"<namespace>.<name>"'` instead.


## 2022-8-29
### Breaking: Unlikely

- Remove all IFD from dependencies of purs-nix.

  IFD causes issues with the current flakes API, and now purs-nix should be free from them.

## 2022-8-28
### Breaking: Unlikely

- Disable incremental building by default

  Turns out it's just way slower. Dependencies are still compiled separately to the local files so that giant computation can be cached, but trying to build and cache every module individually turns out to be almost always slower than just recompiling all the local modules any time there's a change. This has no effect on the `purs-nix` command in nix shells - this is only changes the [derivations](docs/derivations.md).

- Stop using IFD to compute the dependency graph
