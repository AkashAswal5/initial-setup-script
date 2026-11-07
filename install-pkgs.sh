#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/curr.conf"
source "$SCRIPT_DIR/helper.sh"

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

echo "Installing WEB_ENUM"
install_pkgs "${WEB_ENUM[@]}"
echo "$DASH_LINE"

echo "Installing VULN_SCANNING"
install_pkgs "${VULN_SCANNING[@]}"
echo "$DASH_LINE"

echo "Installing PRIV_ESC"
install_pkgs "${PRIV_ESC[@]}"
echo "$DASH_LINE"

echo "Installing ACTIVE_DIRECTORY"
install_pkgs "${ACTIVE_DIRECTORY[@]}"
echo "$DASH_LINE"

echo "Installing PASSWORD_ATTACKS"
install_pkgs "${PASSWORD_ATTACKS[@]}"
echo "$DASH_LINE"

echo "Installing WIRELESS"
install_pkgs "${WIRELESS[@]}"
echo "$DASH_LINE"

echo "Installing CONTAINERS"
install_pkgs "${CONTAINERS[@]}"
echo "$DASH_LINE"

echo "Installing CLOUD_SECURITY"
install_pkgs "${CLOUD_SECURITY[@]}"
echo "$DASH_LINE"

echo "Installing FORENSICS"
install_pkgs "${FORENSICS[@]}"
echo "$DASH_LINE"

echo "Installing REVERSE_ENGINEERING"
install_pkgs "${REVERSE_ENGINEERING[@]}"
echo "$DASH_LINE"

echo "Installing OSINT"
install_pkgs "${OSINT[@]}"
echo "$DASH_LINE"


