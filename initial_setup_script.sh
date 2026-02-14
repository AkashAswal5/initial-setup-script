#!/bin/bash

## make all file executable in scripts and run them 
curr=$PWD
#   cd scripts

find scripts -type f -name "*.sh" -exec chmod +x {} \;
find scripts -type f -name "*.sh" -exec ./{} \;

#   chmod +x *.sh
# ./*.sh ### verify this
