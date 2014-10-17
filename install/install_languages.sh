#!/bin/bash

# Ruby
if ! type -p ruby > /dev/null; then
  echo 'Ruby not found, attempting to install'
  bash ./install_rbenv.sh
  bash ./install_gems.sh
fi
