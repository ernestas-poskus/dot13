#!/bin/sh
if ! type -p brew > /dev/null; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

cp -Rv "$HOME/dot13/os/darwin/." "$HOME"

ln -sf "$HOME/dot13/os/darwin/.darwin_exports" "$HOME"
