#!/bin/bash

function ct() {
  cargo test --jobs 32 --all-features -- --nocapture "$@"
}

function ct1() {
  cargo test --jobs 1 --all-features -- --nocapture "$@"
}

function cu() {
  find . -name 'Cargo.toml' -execdir cargo upgrade \;
  find . -name 'Cargo.toml' -execdir cargo update \;
}

function cargo_clean() {
  find . -name 'Cargo.toml' -execdir cargo clean \;
}

function cb() {
  cargo bench --all-features -- --nocapture "$@"
}
