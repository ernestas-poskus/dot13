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

if [ ! -d "$HOME/.zprezto" ]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

for f in $DOT_PATH/zsh/prezto/* ; do
  ln -sf $f "$HOME/.$(basename $f)"
done

ln -sf "$DOT_PATH/zsh/zshrc" "$HOME/.zshrc"
