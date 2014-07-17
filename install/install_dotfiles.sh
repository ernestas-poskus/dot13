#!/bin/sh

DOT="$HOME/dot13"

##############################################
# Linking
##############################################

# Dot files
for f in $HOME/dot13/dotfiles/.*
do
  if [ -f $f ]; then
    ln -sf $f $HOME
  fi
done

# Vim
ln -sf "$DOT/vim/vimrc" "$HOME/.vimrc"

# Zsh
ln -sf "$DOT/zsh/.zshrc" "$HOME"

# Linking sourcer hook
ln -sf "$DOT/dot_hook.sh" "$HOME"
