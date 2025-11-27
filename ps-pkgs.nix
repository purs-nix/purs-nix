{ l, official-package-set, registry }: self:
with builtins;
(with self; {
  html-parser-halogen = {
    info.dependencies = [
      "arrays"
      "control"
      "dom-indexed"
      "foldable-traversable"
      "effect"
      "halogen"
      "maybe"
      "prelude"
    ];

    src.git = {
      repo = "https://github.com/rnons/purescript-html-parser-halogen.git";
      rev = "035a51d02ba9f8b70c3ffd9fe31a3f5bed19941c";
    };
  };

  markdown-it.src.flake.url = "github:purs-nix/purescript-markdown-it/4b90edc070c9ede0ee045224e0c64f9c502c3bf7";

  node-glob-basic = {
    src.git = {
      repo = "https://github.com/natefaubion/purescript-node-glob-basic.git";
      rev = "22b374b30537a945310fb8049f5bce1b51a7a669";
    };

    info = {
      version = "1.2.0";

      dependencies = [
        "aff"
        "console"
        "effect"
        "lists"
        "maybe"
        "node-fs-aff"
        "node-path"
        "node-process"
        "ordered-collections"
        "strings"
      ];
    };
  };

  task = {
    src.git = {
      repo = "https://github.com/ursi/purescript-task.git";
      rev = "7925eda037cac528976d435db7e1a5c8db2a03b8";
    };

    info = /package.nix;
  };
})
// (
  # We have to use the legacy package set to get the dependency lists.
  # We can't get them from the purs.json for this use case, because it requires IFD,
  # Which to due to how Nix works, means the packages cannot be fetched in parallel.
  mapAttrs
    (_: v: {
      src.registry = {
        ref = v.version;
        dependency-override = v.dependencies;
      };
    })
    (l.filterAttrs (n: _: n != "metadata")
      (l.importJSON "${official-package-set}/packages.json"))
)
  // import ./ps-pkgs-ns.nix {
  inherit l;
  ps-pkgs = self;
}
