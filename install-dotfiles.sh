#!/bin/bash

source "./helper.sh"

ORIGINAL_DIR=$(pwd)
REPO_URL="https://github.com/AkashAswal5/dotfiles"
REPO_NAME="dotfiles"
BRANCH_NAME="tek_macos"

if ! is_installed "stow"; then
  echo "Install stow first"
  exit 1
fi

cd ~

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone"
else
  git clone "$REPO_URL"
fi

# Check if the clone was successful
if [ $? -eq 0 ]; then
  cd "$REPO_NAME"
  git checkout "$BRANCH_NAME"

  # WARNING: Only delete and stow those programs which you know exist in your ~/dotfiles
  echo "removing old configs"
  rm -rf ~/.config/kitty
  rm -rf ~/.config/mpv
  rm -rf ~/.config/zellij
  rm -rf ~/.zshrc
  rm ~/.gitconfig

  echo "Installing the files again"
  stow kitty
  stow mpv
  stow zellij
  stow zsh
  stow gitconfig
else
  echo "Failed to clone the repository."
  exit 1
fi

echo "$DASH_LINE"
