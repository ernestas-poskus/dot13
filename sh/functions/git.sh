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

function git_current_branch() {
  if [ -d '.git' ]; then git rev-parse --abbrev-ref HEAD; fi
}

function update_upstream() {
  git fetch upstream && git merge upstream/master && git push
}

function update_upstream_master() {
  git checkout master && update_upstream && git checkout -
}

function check_overcommit() {
  if [ -d ".git" ]; then
    if [ ! -f ".overcommit.yml" ]; then
      pwd=`pwd`
      echo 'Installing .overcommit.yml'
      cp "$DOT13_PATH/templates/.overcommit.yml" "$pwd/"
      overcommit --install
      overcommit --sign
    fi
  fi
}
