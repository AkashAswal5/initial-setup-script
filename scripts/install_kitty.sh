#/bin/bash
# 
# set -e
# #   https://sw.kovidgoyal.net/kitty/quickstart/
# 
 sudo pacman -S --noconfirm kitty
# 
# # #  $TERMINAL environnent variable
# #  echo "export TERMINAL=kitty" >> ~/.zshrc
# #  echo "export TERMINAL=kitty" >> ~/.bashrc
# 
# SHELL_RC="$HOME/.bashrc"
# if [[ $SHELL == *"zsh" ]]; then
#   SHELL_RC="$HOME/.zshrc"
# fi 
# 
# echo "Setting TERMINAL environment variable..."
# if ! grep -q "TERMINAL=kitty" "$SHELL_RC"; then
#     echo "export TERMINAL=kitty" >> "$SHELL_RC"
# fi
# 
# echo "Configuring x-terminal-emulator..."
# if command -v update-alternatives >/dev/null 2>&1; then
#     sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/kitty 50
#     sudo update-alternatives --set x-terminal-emulator /usr/bin/kitty
# else
#     echo "update-alternatives not found, skipping..."
# fi
# 
# echo "Setting XDG default terminal..."
# xdg-mime default kitty.desktop x-scheme-handler/terminal || true
# 
# echo "Done!"
