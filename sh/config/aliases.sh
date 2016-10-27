# Config edit
alias addalias="$EDITOR ~/dot13/sh/config/aliases.sh"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Letter
alias v="$EDITOR"
alias e='emacs'
alias de='cd ~/.dev'
alias det='cd ~/.dev/testing'
alias g='git'

# Programs
alias red='redis-cli'
alias cas='cqlsh'
alias ki='bundle exec kitchen'
alias kn='bundle exec knife'

# Convenience
alias todo="$EDITOR ~/TODO"
alias okr="$EDITOR ~/OKR"
alias vag='vagrant'
alias a='ansible'
alias ap='ansible-playbook'
alias px='ps auxf'

# Languages

# Ruby
alias be='bundle exec'
alias bl='bundle list'
alias bu='bundle update'
alias bi='bundle install'

# Go
alias gr='go run *.go'
alias t='go test'
alias t2='go test -cpu=2'
###########

# Shortcuts
alias dropbox="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dot13="cd ~/dot13"
alias vim13="cd ~/vim13"
alias emacs13="cd ~/emacs13"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# List all files colorized in long format, including dot files
alias laF="ls -laF ${colorflag}"

# List only directories
alias lF="ls -lF ${colorflag} | grep --color=never '^d'"

# List Recursively
alias laR="ls -laR"

# List Simple
alias ll='ls -l'

alias l="ls -lAhtr"

# Get week number
alias week='date +%V'

alias now='date +%Y_%m_%d_%H-%M'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"
