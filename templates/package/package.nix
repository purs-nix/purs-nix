{ ps-pkgs, ... }:
  { dependencies =
      with ps-pkgs;
      [ console
        effect
        prelude
      ];
  }
