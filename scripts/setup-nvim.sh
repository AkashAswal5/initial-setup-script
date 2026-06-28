#!/bin/bash

GHUB_REPO="https://github.com/AkashAswal5/nvim.git"
NVIM_CFG="$HOME/.config/nvim"

if [ -d "$NVIM_CFG" ]; then
    echo "NVIM Config already present. Removing"
    rm -rf "$NVIM_CFG"
fi

git clone -b tek_macos "$GHUB_REPO" "$NVIM_CFG"
cd "$NVIM_CFG"

git checkout tek_macos

