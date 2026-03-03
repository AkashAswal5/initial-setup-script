#!/bin/bash

REPO_NAME="$HOME/dotfiles"
 # REPO_NAME="dotfiles"
REPO_URL="https://github.com/AkashAswal5/dotfiles.git"

echo "linking dotfiles  \n zsh, zellij"

# if ! is_installed "stow"; then
if ! command -v stow &>/dev/null; then
  echo "Install stow first"
  exit 1
fi

cd ~

# check if the repository exists or not
if [ -d "$REPO_NAME" ]; then
  echo "Respository '$REPO_NAME' already exists. \n want forcefull clone press 1"
  # complete logic here
  read -r choice
  [ "$choice" != "1" ] && exit 0
  rm -rf "$REPO_NAME"
else
  git clone "$REPO_URL"
fi 


  # check if the clone was successful
if [ $? -eq 0 ]; then
  echo "removing old configs"
  rm -rf ~/.config/zellij
  rm -rf ~/.zshrc
  rm -rf ~/.bashrc
  rm -rf ~/.config/uwsm/default
  rm -rf ~/.config/xdg-terminals.list
  rm -rf ~/.config/kitty
  rm -rf ~/.config/git


  cd "$REPO_NAME"
  echo "Installing the files again"
  stow zellij
  stow zsh
  stow bash
  stow uwsm
  stow xdg
  stow kitty
  stow git


  echo -e "\n \n BOSS YOUR $"REPO_NAME" ARE  HERE"
else
  echo "Failed to clone the repository."
  exit 1
fi


# export ZDOTDIR="$HOME/.dotfiles/zsh"  --> path in .zshrc --> for saving zsh configs like .zshrc, .zshenv
# mkdir -p "$HOME/.dotfiles/zsh"
# touch "$HOME/.dotfiles/zsh/.zshenv" "$HOME/.dotfiles/zsh/.zshrc"


filget "Lets go"
