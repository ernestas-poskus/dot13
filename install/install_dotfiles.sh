#!/bin/sh

DOT="$HOME/dot13"

##############################################
# Linking
##############################################

# Dot files
for f in $HOME/dot13/dotfiles/*; do
  if [ -f $f ]; then
    ln -sf $f "$HOME/.$(basename $f)"
  fi
done

# Vim
ln -sf "$HOME/vim13/vimrc" "$HOME/.vimrc"
