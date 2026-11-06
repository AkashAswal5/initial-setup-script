#!/bin/bash

CURR_DIR="$(pwd)"

# Check if homebrew is installed or not
source "./install-brew.sh"

# Install all the packages in ./curr.conf
cd "$CURR_DIR"
source "./install-pkgs.sh"

cd "$CURR_DIR"
# oh-my-zsh first: its installer overwrites ~/.zshrc, so it must run before stowing ours
source "./install-oh-my-zsh.sh"

cd "$CURR_DIR"
echo "Installing dotfiles"
source "./install-dotfiles.sh"

cd "$CURR_DIR"
source "./setup-nvim.sh"

cd "$CURR_DIR"
source "./install-aerospace.sh"

figlet -c 'DONE'
