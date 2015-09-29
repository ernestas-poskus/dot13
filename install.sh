#!/bin/bash

if [ ! -d "$HOME/dot13" ]; then
    echo "Installing dot13"
    git clone https://github.com/ernestas-poskus/dot13.git "$HOME/dot13"

    . $HOME/dot13/sourcefiles/exports

    echo "First time installation"

    bash "$DOT_PATH_INSTALL/install_languages.sh" # Programming Languages
    bash "$DOT_PATH_INSTALL/install_zprezto.sh"

    # Install/Upgrade
    bash "$DOT_PATH_INSTALL/upgrade.sh"
else
    echo 'Already installed'
    bash "$HOME/dot13/install/upgrade.sh"
fi
