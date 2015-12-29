# RSVM - Rust version manager
export RSVM_DIR="$HOME/.rsvm"
if [ ! -d $RSVM_DIR ]; then
  echo 'Installing Rust Version manager'
  curl -L https://raw.github.com/sdepold/rsvm/master/install.sh | sh
fi
[[ -s ~/.rsvm/rsvm.sh ]] && . ~/.rsvm/rsvm.sh # This loads RSVM

# Rust src
rust_src="$HOME/rust-src"

# Exporting RUST_SRC_PATH
export RUST_SRC_PATH="$rust_src/src"

if [ ! -d $RUST_SRC_PATH ]; then
  git clone https://github.com/rust-lang/rust.git $rust_src
fi

# Add Carbo bin executables to $PATH
if [ -d "$HOME/.cargo" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

# Install Rust racer
if ! which racer > /dev/null; then
  cargo install --git 'https://github.com/phildawes/racer.git'
fi
