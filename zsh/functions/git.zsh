# Git - zsh based functions

function gbase() {
  git fetch && git rebase
}

# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}

function gpu() {
  git push -u origin `git symbolic-ref HEAD | sed -e "s/^refs\/heads\///"`
}

function gignore() {
  touch .gitignore && curl -L -s "https://www.gitignore.io/api/$@" >> .gitignore
}
