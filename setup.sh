#!/bin/bash

## make all file executable in scripts and run them 
curr=$PWD
cd scripts
chmod +x *.sh
./*.sh ### verify this
