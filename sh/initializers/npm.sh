#!/bin/bash

export NVM_DIR="$HOME/.nvm"
export NVM_BIN="$NVM_DIR/nvm.sh"
if [ ! -d "$NVM_DIR" ]; then
  echo 'NVM not found'
  curl -L https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
fi

# shellcheck source=initializers/nvm.sh
[ -s "$NVM_BIN" ] && . "$NVM_BIN"  # This loads nvm

if dot13_installed_or_mark 'npm-eslint'; then
  npm i -g eslint
fi

if dot13_installed_or_mark 'npm-plugin-vue'; then
  npm i -g eslint-plugin-vue
fi