#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

run_step() {
  echo "==> Running $1"
  bash "$SCRIPT_DIR/$1" || { echo "FAILED at step: $1"; exit 1; }
}

# Homebrew (if not installed)
run_step install-brew.sh

# All packages from curr.conf
run_step install-pkgs.sh

# oh-my-zsh + plugins (must run before dotfiles: installer writes its own .zshrc)
run_step install-oh-my-zsh.sh

# Dotfiles via stow (kitty, mpv, zellij, yazi, zsh, gitconfig)
run_step install-dotfiles.sh

# NVIM config
run_step setup-nvim.sh

# Aerospace window manager
run_step install-aerospace.sh

# my-space repos
run_step git_repo_my_space.sh

figlet -c 'DONE'
