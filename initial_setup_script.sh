#!/bin/bash

## make all file executable in scripts and run them 
curr=$PWD
#   cd scripts


# run all scripts
find scripts -type f -name "*.sh" -exec chmod +x {} \;
find scripts -type f -name "*.sh" -exec ./{} \;

#   chmod +x *.sh
# ./*.sh ### verify this


# make zsh as default SHELL
#  which zsh  # check  zsh path  
#  chsh -s /usr/bin/zsh # set as default SHELL
     # change logic here if zsh  not here install it here and psss zsh path to ____ as default path

     # new approach
     chsh -s "$(which zsh)" # chsh here is change shell and -s is take new shell path

    

    # set kitty as default terminal
export TERMINAL=kitty
