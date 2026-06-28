#!/bin/bash

direc="$HOME/my-space"
# create Directory Structure for my-space
if [ -d "$direc" ]; then
  echo "Directory exists."
else
  echo "Creating Directory Structure"
  mkdir -p "$direc" || exit 1
fi

  cd "$direc" || exit 1
  git clone https://github.com/AkashAswal5/Notes.git
  git clone https://github.com/AkashAswal5/payloads.git
  git clone https://github.com/AkashAswal5/bash-scripts.git 

