#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/helper.sh"

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
  git clone -b "$BRANCH_NAME" "$REPO_URL"
fi

# Check if the clone was successful
if [ $? -eq 0 ]; then
  cd "$REPO_NAME"
  git checkout "$BRANCH_NAME"

  # WARNING: Only delete and stow those programs which you know exist in your ~/dotfiles
  echo "Backing up old configs"
  BACKUP_DIR="$HOME/.dotfiles-backup.$(date +%Y%m%d%H%M%S)"
  mkdir -p "$BACKUP_DIR"
  for old in ~/.config/kitty ~/.config/mpv ~/.config/zellij ~/.config/yazi ~/.zshrc ~/.gitconfig; do
    [ -e "$old" ] && mv "$old" "$BACKUP_DIR/"
  done
  echo "Old configs backed up to $BACKUP_DIR"

  echo "Installing the files again"
  stow kitty
  stow mpv
  stow zellij
  stow yazi
  stow zsh
  stow gitconfig
else
  echo "Failed to clone the repository."
  exit 1
fi

echo "$DASH_LINE"
