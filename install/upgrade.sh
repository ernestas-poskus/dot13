#!/bin/sh

echo "Upgrading"

# Reinstall dotfiles
bash "$HOME/dot13/install/install_dotfiles.sh"

# Resource sourcefiles
source "$HOME/dot13/zsh/hook.sh"
