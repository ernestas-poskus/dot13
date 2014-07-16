#!/bin/sh

if [ "$DOT_ENV" == 'work' ]; then
  ln -sf "$HOME/dot13/git/.gitconfig.work" "$HOME"
fi
