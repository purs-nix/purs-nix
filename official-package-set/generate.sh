set -e
nix build -f generate.nix
cp result default.nix
chmod +w default.nix
