with builtins;
build-test:
{ ps-pkgs, licenses, ... }:
{
  dependencies = with ps-pkgs; [
    build-test
    "assert"
    "console"
    "effect"
    "node-path"
    "node-process"
    "prelude"
  ];

  pursuit = {
    name = "test";
    license = licenses.bsd3;
    repo = "https://github.com/purs-nix/purs-nix.git";
  };
}
