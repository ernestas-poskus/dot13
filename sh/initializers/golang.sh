#!/bin/bash

export GO15VENDOREXPERIMENT=1

# GVM provides an interface to manage Go versions.
# https://github.com/moovweb/gvm
export GVM_DIR="$HOME/.gvm"
if [ ! -d "$GVM_DIR" ]; then
  echo 'Install Golang Version manager'
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOBIN="$GOPATH"/bin/

if dot13_installed_or_mark 'golang-dependencies'; then
  sudo dnf install -y bison
fi

if command -v go > /dev/null; then
  if dot13_installed_or_mark 'golanglinters'; then
    go get -u -v github.com/nsf/gocode
    go get -u -v github.com/rogpeppe/godef
    go get -u -v golang.org/x/tools/cmd/guru
    go get -u -v golang.org/x/tools/cmd/gorename
    go get -u -v golang.org/x/tools/cmd/goimports
    go get -u -v github.com/alecthomas/gometalinter
    gometalinter --install --update
  fi
fi

GOPATH="$HOME/golang/go"

if [ -d "$GOPATH" ]; then
  GOBIN="$HOME/golang/go/bin"
  mkdir -p "$GOBIN"
  export GOPATH=$GOPATH
  export PATH="$GOBIN:$PATH"

  if dot13_installed_or_mark 'golang-goreman'; then
    go get -v github.com/mattn/goreman
  fi
fi
