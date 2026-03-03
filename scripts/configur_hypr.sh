#!/bin/bash
 
# configuration for changing capslock to esc key in omarchi
# sudo pacman -S keyd
yay -S keyd

sudo mkdir -p /etc/keyd

# Create the keyd config
sudo tee /etc/keyd/default.conf >/dev/null <<'EOF'
[ids]
*

[main]
# CapsLock acts as Escape on tap, Control on hold
capslock = overload(control, esc)

# (Optional) Map physical Esc to `pause` key so we can later remap it to the XCompose key in `~/.config/hypr/input.conf`
esc = pause
EOF

#   Enable and start keyd
sudo systemctl enable --now keyd

# Tell Hyprland to use Pause as Compose


# Change the current kb_options to the following:
 # kb_options = compose:paus 
 
 # the changes are already done in  ~/dotfiles/hypr/


hyprctl reload

#  https://github.com/basecamp/omarchy/discussions/1383   --> reference
