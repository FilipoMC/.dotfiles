#!/bin/env bash
set -euo pipefail

DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
command cat "$DIR/cli-packages.txt" | paru -Syu --needed --noconfirm -

if [[ ! -f "$DIR/../../.stow-local-ignore" ]]; then
  echo "Run this from the .dotfiles repository placed in your home directory"
  exit 1
fi

# Change when moving the file
stow -d "$DIR/../.." "$(command cat "$DIR/cli-stow-packages.txt")"
