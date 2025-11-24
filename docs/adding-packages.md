# Adding Packages

Packages are added by modifying either [ps-pkgs.nix](/ps-pkgs.nix) or `namespaces/<namespace>.nix`. To add a package to `ps-pkgs.nix`, add an attribute to the attrset for the package's name, and give it a value of type [`PackageData`](types.md#PackageData), minus the `name`, which will be filled in with the attrset key.

## <code id="user-content-build">build</code>
This is is the function that builds a package for purs-nix. You can use it to add packages to your project from arbitrary sources. It takes a [`PackageData`](types.md#PackageData) value as an argument.

## <code id="user-content-build-set">build-set</code>
purs-nix exports a `build-set` function that can be used to add packages to your project from arbitrary sources. It works like build except you can specify a whole attribute set.
I think this will likely be deprecated soon, as it's not currently being used anywhere and
there are overlays now, but I'm going to wait until multiple backends are supported to be
sure.
