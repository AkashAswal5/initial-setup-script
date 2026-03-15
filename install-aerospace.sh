#!/bin/bash

# WARNING: Run this only after running ./install-dotfiles.sh
brew install --cask nikitabobko/tap/aerospace

rm -rf ~/.config/aerospace
cd ~/dotfiles/
stow aerospace
