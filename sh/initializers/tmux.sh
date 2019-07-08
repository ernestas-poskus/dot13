#!/bin/bash

TMUX_DIR="$HOME/.tmux"
TMUX_PLUGINS_DIR="$TMUX_DIR/plugins"

if [ ! -d "$TMUX_PLUGINS_DIR" ]; then
  mkdir -p $TMUX_PLUGINS_DIR &> /dev/null
fi

if [ ! -d "$TMUX_PLUGINS_DIR/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$TMUX_PLUGINS_DIR/tpm"
fi
