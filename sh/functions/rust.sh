#!/bin/bash

function ct() {
  if [ -f 'test' ]; then
    echo 'Test file found, running..'
    ./test "$@"
  else
    cargo test --all-features -- --nocapture
  fi
}

function cu() {
  find . -name 'Cargo.toml' -execdir cargo upgrade \;
  find . -name 'Cargo.toml' -execdir cargo update \;
}

function cargo_clean() {
  find . -name 'Cargo.toml' -execdir cargo clean \;
}
