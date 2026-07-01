#!/bin/bash

set -e # exit immediately if any command within  a script return a non-zero exit status (indicating failure).

ZSH_CUSTOM="$HOME/.oh-my-zsh"
if [ -d "$ZSH_CUSTOM" ]; then
  echo "oh-my-zsh Already Installed....."
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install plugins
# zsh-autosuggestion

if [ -d "$ZSH_CUSTOM/plugins/zsh-autosuggestion" ]; then
  echo "zsh-autosuggestion already install"
else
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

# syntax-highlighting
if [ -d $ZSH_ZUSTOM/plugins/zsh-syntax-highlighting ]; then
  echo "zsh-syntax-highlighting already install"
else
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi 

# zsh-autocomplete 
if [ -d "$ZSH_CUSTOM/plugins/zsh-autocomplete" ]; then
  echo "zsh-autocomplete already installed"
else
  git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git "$ZSH_CUSTOM/plugins/zsh-autocomplete"
fi
