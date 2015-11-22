#!/bin/bash

if [ ! -d "$HOME/dot13" ]; then
    echo "Installing dot13"
    git clone https://github.com/ernestas-poskus/dot13.git "$HOME/dot13"

    . $HOME/dot13/sourcefiles/exports

    echo "First time installation"
    if [ $(uname -s) = 'Linux' ]; then
      # Update sources
      sudo apt-get install update

      # Libraries
      sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev

      sudo apt-get install silversearcher-ag tmux exuberant-ctags

      # Zsh
      sudo apt-get install -y zsh

      if [ ! -d "$HOME/.zprezto" ]; then
        git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
      fi

      for f in $DOT_PATH/zsh/prezto/* ; do
        ln -sf $f "$HOME/.$(basename $f)"
      done

      ln -sf "$DOT_PATH/zsh/zshrc" "$HOME/.zshrc"
    fi
fi

echo "Upgrading"

# Dot files
for f in $HOME/dot13/dotfiles/*; do
  if [ -f $f ]; then
    ln -sf $f "$HOME/.$(basename $f)"
  fi
done

# Vim
ln -sf "$HOME/vim13/vimrc" "$HOME/.vimrc"
