# Setting up Nix and flakes

Here is [the wiki](https://nixos.wiki/wiki/Flakes) page if you would rather use that than the instructions here.

If you already have Nix installed and you don't want upgrade the version on your system, you can use [nixf](https://github.com/ursi/nixf). If you use **nixf**, you do not need to follow the instructions below. Keep in mind, for all example that use the `nix` command, you'll need to use the `nixf` command.

## Non-NixOS

- [Install Nix](https://nixos.org/download.html#nix-quick-install)
- Upgrade to the unstable version\
  `nix-env -iA nixpkgs.nixUnstable`
- Add the following line to either `~/.config/nix/nix.conf` or `/etc/nix/nix.conf` (create the file if it doesn't exist).\
  `experimental-features = nix-command flakes`

## NixOS

Set the following options in your `configuration.nix`:

- `nix.package = pkgs.nixUnstable`
- `nix.extraOptions = "experimental-features = nix-command flakes"`
