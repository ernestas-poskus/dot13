#!/bin/sh

if [ ! -d "$HOME/dot13" ]; then
    echo "Installing dot13"
    git clone https://github.com/ernestas-poskus/dot13.git "$HOME/dot13"
    cd "$HOME/dot13"
    bash "$HOME/dot13/tools/determine_kernel.sh"
    bash "$HOME/dot13/tools/determine_environment.sh"
    source "$HOME/.dot13"
    echo "Proceeding.. "
    bash "$HOME/dot13/install/first_time.sh"
else
    echo "dot13 is already installed"
    echo "use $HOME/dot13/install/upgrade.sh"
fi
