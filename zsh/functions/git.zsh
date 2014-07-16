# Git - zsh based functions

function gbase() {
  git fetch && git rebase
}

# Makes git auto completion faster favouring for local completions
__git_files () {
    _wanted files expl 'local files' _files
}
