#!/bin/bash

GOPATH="$HOME/golang/go"

if [ -d $GOPATH ]; then
  GOBIN="$HOME/golang/go/bin"
  mkdir -p $GOBIN
  export GOPATH=$GOPATH
  export PATH="$GOBIN:$PATH"

  if dot13_installed_or_mark 'golang-goreman'; then
    go get -v github.com/mattn/goreman
  fi
fi
