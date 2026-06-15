#!/bin/bash

CURR_DIR="$(pwd)"


# Install all the packages in ./curr.conf
cd "$CURR_DIR"
source "./install-pkgs.sh"

cd "$CURR_DIR"
echo "Installing dotfiles"
source "./install-dotfiles.sh"

cd "$CURR_DIR"
source "./install-oh-my-zsh.sh"

figlet -c 'DONE'

