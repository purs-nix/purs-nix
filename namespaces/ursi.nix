{ debug =
    { src.git =
        { repo = "https://github.com/ursi/purescript-debuggest.git";
          rev = "56b27bd20c78188d8e28826b8610f96c54889996";
        };

      info = /package.nix;
    };

  # elmish =
  #   { repo = "https://github.com/ursi/purescript-elmish.git";
  #     rev = "61bc2ecf760a6f6b8cd05ad45c7da1c9e524d818";
  #     info = /package.nix;
  #   };

  ffi-options =
    { src.git =
        { repo = "https://github.com/ursi/purescript-ffi-options.git";
          rev = "568f213577549e958f931f4d9e7dc7c57bf5fadc";
        };

      info = {};
    };

  # html =
  #   { repo = "https://github.com/ursi/purescript-whatwg-html.git";
  #     rev = "27ff0f79ac39f42d718a0806f0b1b79b8a7534d0";
  #     info = /package.nix;
  #   };

  is-even =
    { src.git =
        { repo = "https://github.com/ursi/purs-nix-test-packages.git";
          rev = "7e50388792dfa720e52b23219021f3c350e6bb30";
        };

      info = /is-even/package.nix;
    };

  # murmur3 =
  #   { repo = "https://github.com/ursi/purescript-murmur3.git";
  #     rev = "4da7d071ac5791b21fe9064d84e067a34fdc29e3";
  #     info = /package.nix;
  #   };

  prelude =
    { src.git =
        { repo = "https://github.com/ursi/purescript-mason-prelude.git";
          rev = "4cf30ef52a44ac9d88d17884188ab87cffb79fdc";
        };

      info = /package.nix;
    };

  # producer =
  #   { repo = "https://github.com/ursi/purescript-producer.git";
  #     rev = "3e5a9e1be5b3e2fa37e36d5abab5753b987f2996";
  #     info = /package.nix;
  #   };

  # refeq =
  #   { repo = "https://github.com/ursi/purescript-refeq.git";
  #     rev = "155bbf2aae9235b25643b32860e8d85de3c98b8f";
  #     info = /package.nix;
  #   };

  # simple-json =
  #   { repo = "https://github.com/ursi/purescript-simple-json.git";
  #     rev = "25878767b0eafb6c9cff831567230c39b7058cd5";
  #     info = /package.nix;
  #   };

  # task-file =
  #   { repo = "https://github.com/ursi/purescript-task-file.git";
  #     rev = "9926d479af55a7568032a1360c9e0d8790b64bd7";
  #     info = /package.nix;
  #   };

  # task-node-child-process =
  #   { repo = "https://github.com/ursi/purescript-task-node-child-process.git";
  #     rev = "01421010ead52e66a827053fd69e13befbc1ba6a";
  #     info = /package.nix;
  #   };
}
