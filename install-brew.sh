#!/bin/bash

if ! command -v brew &> /dev/null; then
    echo "Install brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Brew is already installed"
fi
