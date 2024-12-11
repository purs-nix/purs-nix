## 2024-12-7
### Breaking: No

- Added a `pkgs` argument to the top level functor of the purs-nix flake. This was done to allow users to override the `pkgs` that purs-nix uses, in ways other than setting `inputs.nixpkgs.follows`.


## 2023-2-28
### Breaking: Potentially

- Foreign dependency declarations are restricted to only the modules that are in the project/package for which you are declaring them. This restriction is required to fix [issue 44](https://github.com/purs-nix/purs-nix/issues/44). You can still add foreign dependencies to arbitrary modules, you now just have to patch the packages that they come from instead. See [docs](docs/foreign.md).


## 2022-12-17
### Breaking: Very Unlikely

- Added a `defaults` argument to the `purs-nix` Nix function, with sub-argument `compile` for configuring compiler flags to use project wide.


## 2022-12-12
### Breaking: Likely

- New API: `modules.<module-name>.x` has been replaced with just `x` (the `modules` API is still here, but is now deprecated). See [here](docs/derivations.md).

- Switch dependencies to be primarily strings.

- Add a [.overlay](docs/modifying-package-set.md#generating-overlays-from-packages) property on packages.
- Dependency packages are now compiled separately.


## 2022-10-17
### Breaking: Very Unlikely

- Add [overlay system](docs/modifying-package-set.md).


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
