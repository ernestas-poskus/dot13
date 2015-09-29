#!/bin/bash

if [ ! -d "$HOME/.zprezto" ]; then
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

for f in $DOT_PATH/zsh/prezto/* ; do
  ln -sf $f "$HOME/.$(basename $f)"
done

ln -sf "$DOT_PATH/zsh/zshrc" "$HOME/.zshrc"
