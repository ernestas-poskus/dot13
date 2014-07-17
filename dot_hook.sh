#!/bin/sh

if [ -f "$HOME/.dot13_environment" ]; then
  source "$HOME/.dot13_environment"
else
  echo '.dot13_environment - Environment / Kernel exports missing'
fi

# Centalized sourcefiles
for f in $HOME/dot13/sourcefiles/.*
do
  if [ -f $f ]; then
    source $f
  fi
done

# OS specific source
if [ -f "$HOME/.darwin_exports" ]; then
  source "$HOME/.darwin_exports"
fi

if [ -f "$HOME/.linux_exports" ]; then
  source "$HOME/.linux_exports"
fi
