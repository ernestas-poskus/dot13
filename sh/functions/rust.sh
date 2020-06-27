#!/bin/bash

function ct() {
  if [ -f 'test' ]; then
    echo 'Test file found, running..'
    ./test "$@"
  else
    cargo test --jobs 32 --all-features -- --nocapture $@
  fi
}

function cu() {
  find . -name 'Cargo.toml' -execdir cargo upgrade \;
  find . -name 'Cargo.toml' -execdir cargo update \;
}

function cargo_clean() {
  find . -name 'Cargo.toml' -execdir cargo clean \;
}

function cb() {
  cargo bench --all-features -- --nocapture $@
}
