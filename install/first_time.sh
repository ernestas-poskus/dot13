#!/bin/bash

echo "First time installation"

# Programming Languages
bash ./install_languages.sh

# Mac OS
if [ "$DOT_KERNEL" != 'darwin' ]; then
  bash ./install_darwin.sh
fi

# Linux <3
if [ "$DOT_KERNEL" != 'linux' ]; then
  bash ./install_linux.sh
fi

# Zsh/.oh-my-zsh
bash ./install_zsh.sh

# Vim
bash ./install_vim.sh

# Install work config
bash ./install_work.sh

# Install/Upgrade
bash ./upgrade.sh
