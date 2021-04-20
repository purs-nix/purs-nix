{ ps-pkgs, ... }:
  with ps-pkgs;
  { dependencies =
      [ console
        effect
        prelude
      ];
  }
