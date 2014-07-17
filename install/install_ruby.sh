#!/bin/bash

rbenv install 2.1.2 && rbenv global 2.1.2

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> "$HOME/sourcefiles/.exports"
echo 'eval "$(rbenv init -)"' >> "$HOME/sourcefiles/.exports"
