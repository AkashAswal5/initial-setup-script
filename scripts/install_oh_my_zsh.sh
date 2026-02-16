#!/bin/bash

set -e # exit immediately if any command within  a script return a non-zero exit status (indicating failure).

ZSH_CUSTOM="$HOME/.oh-my-zsh"
if [ -d "$ZSH_CUSTOM" ]; then
  echo "oh-my-zsh Already Installed....."
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


