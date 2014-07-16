#!/bin/bash

if ! type -p zsh > /dev/null; then
  echo "Zsh shell not found, installing.."
  if [ "$DOT_KERNEL" != '' ]; then

    if [ "$DOT_KERNEL" == 'darwin' ]; then
      brew install zsh
    elif [ "$DOT_KERNEL" == 'linux' ]; then
      sudo apt-get install -y zsh
    fi

    sudo chsh -s $(which zsh) $(whoami)
  fi
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
fi
