l: self:
with builtins;
with self; {
  event =
    let info = hyrule.purs-nix-info; in {
      src.git = { inherit (info) repo rev; };
      info = { inherit (info) version dependencies; };
    };

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
}
// removeAttrs (import ./official-package-set self)
  # These packages are not available on GitHub anymore
  # Once we switch to using the registry, we can remove this
  [ "logging" "logging-journald" ]
  // import ./ps-pkgs-ns.nix { inherit l; ps-pkgs = self; }
