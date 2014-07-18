#!/bin/sh

echo "Upgrading"

# Reinstall dotfiles
bash "$HOME/dot13/install/install_dotfiles.sh"

# Resource sourcefiles
bash "$HOME/dot13/dot_hook.sh"
