# Config edit
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias addalias="vim ~/dot13/zsh/config/aliases.zsh"
alias dotupgrade="source ~/dot13/install/upgrade.sh"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Letter
alias b='bash'
alias v='nvim'
alias e='emacs'
alias n='node --max-old-space-size=4000'
alias z='zsh'
alias p="cd ~/Documents/projects"
alias de='cd ~/.dev'
alias det='cd ~/.dev/testing'

# Programs
alias red='redis-cli'
alias cas='cassandra-cli'
alias oc='orientdb-console'
alias ki='bundle exec kitchen'
alias kn='bundle exec knife'

# Convenience
alias del='rm -rf'

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

# Rust
alias cr='cargo run'
alias cb='cargo build'
alias ct='cargo test'

# Shortcuts
alias dropbox="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dot13="cd ~/dot13"
alias vim13="cd ~/vim13"

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

alias l="ls -lahtr"

# Gzip-enabled `curl`
alias gurl='curl --compressed'

# Get week number
alias week='date +%V'

alias now='date +%Y_%m_%d_%H-%M'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias lh='ls -alt | head' # see the last modified files
alias cl='clear'

alias psa="ps aux"
