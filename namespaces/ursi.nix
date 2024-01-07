_: {
  debug = {
    src.git = {
      repo = "https://github.com/ursi/purescript-debuggest.git";
      rev = "f03ae5f6984b6f89101660fdd0e09620c8281c87";
    };

    info = /package.nix;
  };

  elmish = {
    src.git = {
      repo = "https://github.com/ursi/purescript-elmish.git";
      rev = "36c5a566faedbe65b753ad459987008d316f1e59";
    };

    info = /package.nix;
  };

  ffi-options = {
    src.git = {
      repo = "https://github.com/ursi/purescript-ffi-options.git";
      rev = "568f213577549e958f931f4d9e7dc7c57bf5fadc";
    };

    info = { };
  };

  html = {
    src.git = {
      repo = "https://github.com/ursi/purescript-whatwg-html.git";
      rev = "e4096a163c2799be4108df2a46225896d348677e";
    };

    info = /package.nix;
  };

  murmur3.src.flake.url = "github:ursi/purescript-murmur3/3aec0007073128b807a58adace08ee2b1197334b";

  prelude = {
    src.git = {
      repo = "https://github.com/ursi/purescript-mason-prelude.git";
      rev = "205f2c2d801511923603fdd782d812bba0d61be6";
    };

    info = /package.nix;
  };

  producer = {
    src.git = {
      repo = "https://github.com/ursi/purescript-producer.git";
      rev = "209a66fe1ce243b789637dc5289777b45c90f95e";
    };

    info = /package.nix;
  };

  refeq = {
    src.git = {
      repo = "https://github.com/ursi/purescript-refeq.git";
      rev = "7b0df2a73c6ed425ab7c87850804519e9ffc1034";
    };

    info = /package.nix;
  };

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
