#!/bin/sh

if [ -f "$HOME/.dot13" ]; then
  source "$HOME/.dot13"
else
  echo '.dot13 - Environment / Kernel files missing'
fi

# Contains PATH values
if [ -f "$HOME/.dot_path" ]; then
  source "$HOME/.dot_path"
fi

# Centalized sourcefiles
for f in $HOME/dot13/sourcefiles/.*
do
  if [ -f $f ]; then
    source $f
  fi
done
