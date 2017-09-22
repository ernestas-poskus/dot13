# RSVM - Rust version manager
export RSVM_DIR="$HOME/.rsvm"
if [ ! -d $RSVM_DIR ]; then
  echo 'Installing Rust Version manager'
  curl -L https://raw.github.com/sdepold/rsvm/master/install.sh | sh
fi

# Exporting RUST_SRC_PATH
export RUST_SRC_PATH="$HOME/.rsvm/current/src/rustc-nightly-src/src"

if dot13_installed_or_mark 'rust-rustup' > /dev/null; then
  echo 'Installing rustup'
  curl https://sh.rustup.rs -sSf | sh
fi

# Add Carbo bin executables to $PATH
if [ -d "$HOME/.cargo" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# Install Rust racer
if dot13_installed_or_mark 'rust-racer' > /dev/null; then
  echo 'Installing https://github.com/phildawes/racer.git'
  cargo install -f --git 'https://github.com/phildawes/racer.git'
fi

if dot13_installed_or_mark 'rust-rustfmt'; then
  echo 'Installing rustfmt'
  cargo install -f rustfmt
fi

if dot13_installed_or_mark 'rust-clippy'; then
  echo 'Installing clippy'
  cargo install -f clippy
fi

if dot13_installed_or_mark 'rust-diesel_cli'; then
  echo 'Installing diesel_cli'
  cargo install -f diesel_cli --no-default-features --features postgres
fi

if dot13_installed_or_mark 'rust-sccache'; then
  echo 'Installing Rust sccache'
  cargo install -f sccache
fi

# Rust shared build cache
export RUSTC_WRAPPER='sccache'

if dot13_installed_or_mark 'cargo-update'; then
  echo 'Installing cargo update'
  cargo install cargo-update
fi
