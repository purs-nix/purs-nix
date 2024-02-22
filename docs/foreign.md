# Foreign Dependencies

**purs-nix** allows you to package foreign code with your your PureScript packages, so that when people add them as a dependency, there is no more "also install XYZ with npm" required for your code to work. The `foreign` attrset is structured as follows:

```nix
foreign."Module.Name".src = path-to-directory-with-foreign-code;

# and/or

foreign."Other.Module".node_modules = path-to-node-modules-directory;
```

FFI code that uses the `node_modules` option imports the foreign libraries the normal way one imports Node.js dependencies - `import ... from "package-name"`. FFI code that uses the `src` option will import the foreign code from a directory named `foreign`, e.g. `import ... from "./foreign/file.js"`.

You can only add foreign dependencies to modules that are contained within your project/package. If you need to add foreign dependencies to a dependency of your project, you can patch in the foreign dependencies like this

```nix
package-with-foreign =
  lib.recursiveUpdate package { purs-nix-info.foreign = ...; }
```

And then use that package (preferably not in an overlay, but as a [derivation dependency](modifying-package-set.md#generating-overlays-from-packages)).
