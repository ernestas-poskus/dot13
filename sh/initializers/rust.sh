# RSVM - Rust version manager
export RSVM_DIR="$HOME/.rsvm"
if [ ! -d $RSVM_DIR ]; then
  echo 'Installing Rust Version manager'
  curl -L https://raw.github.com/sdepold/rsvm/master/install.sh | sh
fi
[[ -s ~/.rsvm/rsvm.sh ]] && . ~/.rsvm/rsvm.sh # This loads RSVM

# Exporting RUST_SRC_PATH
export RUST_SRC_PATH="$HOME/.rsvm/current/src/rustc-nightly-src/src"

# Add Carbo bin executables to $PATH
if [ -d "$HOME/.cargo" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# Install Rust racer
if dot13_installed_or_mark 'racer' > /dev/null; then
  echo 'Installing https://github.com/phildawes/racer.git'
  cargo install -f --git 'https://github.com/phildawes/racer.git'
fi

if dot13_installed_or_mark 'rustfmt'; then
  echo 'Installing rustfmt'
  cargo install -f rustfmt
fi

if dot13_installed_or_mark 'clippy'; then
  echo 'Installing clippy'
  cargo install -f clippy
fi
