#!/bin/bash

echo "First time installation"

# Mac OS
if [ "$DOT_KERNEL" == 'darwin' ]; then
  bash "$DOT_PATH_INSTALL/install_darwin.sh"
fi

# Linux <3
if [ "$DOT_KERNEL" == 'linux' ]; then
  bash "$DOT_PATH_INSTALL/install_linux.sh"
fi

# Zsh/.oh-my-zsh
bash "$DOT_PATH_INSTALL/install_zsh.sh"

# Vim
bash "$DOT_PATH_INSTALL/install_vim.sh"

# Install/Upgrade
bash "$DOT_PATH_INSTALL/upgrade.sh"
