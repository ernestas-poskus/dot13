#!/bin/sh

echo "Installing dotfiles"

DOT="$HOME/dot13"

##############################################
# Linking
##############################################

# Dot files
for f in $HOME/dot13/dot/.*
do
  if [ -f $f ]; then
    ln -sf $f $HOME
  fi
done

# Git config
ln -sf "$DOT/git/.gitattributes" "$HOME"
ln -sf "$DOT/git/.gitconfig" "$HOME"
ln -sf "$DOT/git/.gitignore" "$HOME"

#######################
# Languages
#######################

# Vim
ln -sf "$DOT/vim/vimrc" "$HOME/.vimrc"

# Zsh
ln -sf "$DOT/zsh/.zshrc" "$HOME"

# Source
ln -sf "$DOT/dot_hook.sh" "$HOME"
