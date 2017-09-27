# RSVM - Rust version manager
export RSVM_DIR="$HOME/.rsvm"
if [ ! -d $RSVM_DIR ]; then
  echo 'Installing Rust Version manager'
  curl -L https://raw.github.com/sdepold/rsvm/master/install.sh | sh
fi

# Exporting RUST_SRC_PATH
export RUST_SRC_PATH="$HOME/.rsvm/current/src/rustc-nightly-src/src"

if dot13_installed_or_mark 'rust-rustup'; then
  curl https://sh.rustup.rs -sSf | sh
fi

# Add Carbo bin executables to $PATH
if [ -d "$HOME/.cargo" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

if which rustc > /dev/null; then
  if dot13_installed_or_mark 'rust-racer'; then
    cargo install -f --git 'https://github.com/phildawes/racer.git'
  fi

  if dot13_installed_or_mark 'rust-rustfmt'; then
    cargo install -f rustfmt
  fi

  if dot13_installed_or_mark 'rust-clippy'; then
    cargo install -f clippy
  fi

  if dot13_installed_or_mark 'rust-diesel_cli'; then
    cargo install -f diesel_cli --no-default-features --features postgres
  fi

  if dot13_installed_or_mark 'rust-sccache'; then
    cargo install -f sccache
  fi

  export RUSTC_WRAPPER='sccache'

  if dot13_installed_or_mark 'cargo-update'; then
    cargo install cargo-update
  fi

  if dot13_installed_or_mark 'cargo-edit'; then
    cargo install cargo-edit
  fi
fi
