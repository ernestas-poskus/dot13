#!/bin/bash

echo "First time installation"

DOT_PATH="$HOME/dot13/install"


# Programming Languages
bash "$DOT_PATH/install_languages.sh"

# Mac OS
if [ "$DOT_KERNEL" != 'darwin' ]; then
  bash "$DOT_PATH/install_darwin.sh"
fi

# Linux <3
if [ "$DOT_KERNEL" != 'linux' ]; then
  bash "$DOT_PATH/install_linux.sh"
fi

# Zsh/.oh-my-zsh
bash "$DOT_PATH/install_zsh.sh"

# Vim
bash "$DOT_PATH/install_vim.sh"

# Install work config
bash "$DOT_PATH/install_work.sh"

# Install/Upgrade
bash "$DOT_PATH/upgrade.sh"
