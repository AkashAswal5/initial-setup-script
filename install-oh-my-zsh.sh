#!/bin/bash

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
if [ -d "$ZSH_CUSTOM" ]; then
    echo "oh-my-zsh Already Installed"
else
    # --unattended: no prompts, no auto-starting zsh (keeps this a one-command install)
    # --keep-zshrc: never replace an existing ~/.zshrc
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
fi

# hint for making brew's zsh the default shell (macOS default is /bin/zsh anyway)
BREW_ZSH="$(command -v zsh)"
if [ -n "$BREW_ZSH" ] && [ "$SHELL" != "$BREW_ZSH" ]; then
    if grep -qx "$BREW_ZSH" /etc/shells; then
        echo "NOTE: to make brew zsh the default shell, run: chsh -s '$BREW_ZSH'"
    else
        echo "NOTE: to use brew zsh as default: echo '$BREW_ZSH' | sudo tee -a /etc/shells && chsh -s '$BREW_ZSH'"
    fi
fi

if [ -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    echo "zsh-autosuggestions already installed"
else
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
fi

if [ -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    echo "zsh-syntax-highlighting already installed"
else
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
fi

if [ -d "$ZSH_CUSTOM/plugins/zsh-autocomplete" ]; then
    echo "zsh-syntax-highlighting already installed"
else
    git clone https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete   
fi


