#!/bin/bash

echo "Upgrading"

# Dot files
for f in $HOME/dot13/dotfiles/*; do
  if [ -f $f ]; then
    ln -sf $f "$HOME/.$(basename $f)"
  fi
done

# Vim
ln -sf "$HOME/vim13/vimrc" "$HOME/.vimrc"
