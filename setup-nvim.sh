#!/bin/bash

GHUB_REPO="https://github.com/AkashAswal5/nvim.git"
NVIM_CFG="$HOME/.config/nvim"

if [ -d "$NVIM_CFG" ]; then
    BACKUP="$HOME/.config/nvim.backup.$(date +%Y%m%d%H%M%S)"
    echo "NVIM Config already present. Moving it to $BACKUP"
    mv "$NVIM_CFG" "$BACKUP"
fi

git clone -b tek_macos "$GHUB_REPO" "$NVIM_CFG"
