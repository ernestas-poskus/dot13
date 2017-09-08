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

# Programs
alias ki='bundle exec kitchen'
alias kn='bundle exec knife'

# Convenience
alias dot13="cd ~/dot13"
alias vim13="cd ~/vim13"

# Ruby
alias be='bundle exec'

# Rust
alias cr='RUST_BACKTRACE=1 RUST_LOG=debug cargo run'
alias cc='cargo check --verbose --all-features'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

alias l="ls -lAhtr ${colorflag}"

# Cassandra
alias ccqlsh='cqlsh 172.17.0.1 --cqlversion=3.4.0'

# Scylla
alias csqlsh='cqlsh 172.17.0.1 --cqlversion=3.3.1'
