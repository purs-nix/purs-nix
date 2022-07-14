# Foreign Dependencies

**purs-nix** allows you to package foreign code with your your PureScript packages, so that when people add them as a dependency, there is no more "also install XYZ with npm" required for you code to work. The `foreign` attrset is structured as follows:

```nix
foreign."Module.Name".src = path-to-directory-with-foreign-code;

# and/or

foreign."Other.Module".node_modules = path-to-node-modules-directory;
```

FFI code that uses the `node_modules` option imports the foreign libraries the normal way one imports Node.js dependencies - `import ... from "package-name"`. FFI code that uses the `src` option will import the foreign code from a directory named `foreign`, e.g. `import ... from "./foreign/file.js"`.
