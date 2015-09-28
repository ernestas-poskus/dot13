#!/bin/bash

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

cp -R "$HOME/dot13/os/darwin/." "$HOME"

ln -sf "$HOME/dot13/os/darwin/.darwin_exports" "$HOME"

# Vim
brew uninstall macvim
brew remove macvim
brew cleanup
brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit

# Zsh
brew install zsh
