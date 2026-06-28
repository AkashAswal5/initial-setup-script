#!/bin/bash

CURR_DIR="$(pwd)"

# Check if homebrew is installed or not
#source "./install-brew.sh"

# Install all the packages in ./curr.conf
cd "$CURR_DIR"
source "./install_pkgs.sh"

cd "$CURR_DIR"
echo "Installing dotfiles"
source "./install_dotfiles.sh"

cd "$CURR_DIR"
source "./scripts/install_oh_my_zsh.sh

cd "$CURR_DIR"
# source "./install-aerospace.sh"

figlet -c 'DONE'

