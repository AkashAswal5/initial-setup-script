# Initial Setup Script for tek_macos setup
It installs the following:
- Homebrew (if not installed)
- Packages in './curr.conf'
- oh-my-zsh with plugins
- Dotfiles (stow) from [here](https://github.com/AkashAswal5/dotfiles/tree/tek_macos) - kitty, mpv, zellij, yazi, zsh, gitconfig
- My [NVIM config](https://github.com/AkashAswal5/nvim.git)
- Aerospace (Window Manager)
- All my-space repos

## How to use
One command:
```bash
git clone -b tek_macos https://github.com/AkashAswal5/initial-setup-script.git ~/initial-setup-script && ~/initial-setup-script/install-all.sh
```
Or step by step:
```bash
git clone -b tek_macos https://github.com/AkashAswal5/initial-setup-script.git ~/initial-setup-script/
cd ~/initial-setup-script
./install-all.sh
# or run any individual script: install-brew.sh, install-pkgs.sh, install-oh-my-zsh.sh,
# install-dotfiles.sh, setup-nvim.sh, install-aerospace.sh, git_repo_my_space.sh
```

