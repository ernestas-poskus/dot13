#!/bin/bash

# Config edit
alias addalias="$EDITOR ~/dot13/sh/config/aliases.sh"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Letter
alias v="$EDITOR"
alias de='cd ~/dev'
alias dr='cd ~/dev/rust'
alias det='cd ~/dev/testing'
alias g='git'
alias c='cargo'
alias ff='goreman -b 3000 start'
alias nn='npm run dev'
alias s='git sf'

# Chef
alias ki='bundle exec kitchen'
alias kn='bundle exec knife'

# Convenience
alias dot13="cd ~/dot13"
alias vim13="cd ~/vim13"

# Ruby
alias be='bundle exec'

# Rust
alias cr='RUST_BACKTRACE=1 RUST_LOG=debug cargo run'
alias cri='RUST_LOG=info cargo run'
alias cc='cargo check --verbose --all-features'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

alias l="ls -lAhtr ${colorflag}"
