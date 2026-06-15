#!/bin/bash

source ./curr.conf
source ./helper.sh

echo "$DASH_LINE"

echo "Updating system"
brew update && brew upgrade

echo "Installing SYSTEM UTILS"
install_pkgs "${SYSTEM_UTILS[@]}"
echo "$DASH_LINE"

echo "Installing DEV TOOLS"
install_pkgs "${DEV_TOOLS[@]}"
echo "$DASH_LINE"

echo "Installing Languages and Frameworks"
install_pkgs "${PROGRAMMING[@]}"
echo "$DASH_LINE"

echo "Installing MEDIA Applications"
install_pkgs "${MEDIA[@]}"
echo "$DASH_LINE"

echo "Installing OTHERS"
install_pkgs "${OTHERS[@]}"
echo "$DASH_LINE"

echo "Installing GITHUB_SAFETY"
install_pkgs "${GITHUB_SAFETY[@]}"
echo "$DASH_LINE"

echo "Installing CYBER_RECON"
install_pkgs "${CYBER_RECON[@]}"
echo "$DASH_LINE"

# more here


