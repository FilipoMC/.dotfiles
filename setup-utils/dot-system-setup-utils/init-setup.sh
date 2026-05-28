#!/bin/env bash
set -euo pipefail

# Install basic packages
DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
command cat "$DIR/init-packages.txt" | sudo pacman -Syu --needed --noconfirm -

# Install paru
[[ -d paru ]] || git clone https://aur.archlinux.org/packages/paru
cd paru
makepkg -si

if [[ ! -f "$DIR/../../.stow-local-ignore" ]]; then
  echo "Run this from the .dotfiles repository placed in your home directory"
  echo "Packages and paru installed, could not configure paru"
  exit 1
fi

# Configure paru
# Change when moving the file
stow -d "$DIR/../.." paru
