#!/bin/bash

# Exporting RUST_SRC_PATH
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

if dot13_installed_or_mark 'rust-rustup'; then
  curl https://sh.rustup.rs -sSf | sh
  rustup toolchain add nightly
  rustup component add rust-src
  rustup component add rustfmt
  rustup component add clippy --toolchain nightly-x86_64-unknown-linux-gnu
  rustup component add rls rust-analysis rust-src
  rustup target add x86_64-unknown-linux-musl
  rustup component add miri
fi

# Add Carbo bin executables to $PATH
if [ -d "$HOME/.cargo" ]; then
  export PATH="$HOME/.cargo/bin:$PATH"
fi

if which rustc > /dev/null; then
  if dot13_installed_or_mark 'rust-sccache'; then
    cargo install sccache
  fi

  export RUSTC_WRAPPER="sccache"

  if dot13_installed_or_mark 'rust-racer'; then
    cargo install -f racer
  fi

  if dot13_installed_or_mark 'rust-rustfmt'; then
    cargo install --bins rustfmt-bin --git https://github.com/rust-lang/rustfmt --force
  fi

  if dot13_installed_or_mark 'rust-diesel_cli'; then
    sudo yum install libpq-devel
    cargo install -f diesel_cli --no-default-features --features mysql
  fi

  if dot13_installed_or_mark 'cargo-update'; then
    cargo install cargo-update
  fi

  if dot13_installed_or_mark 'cargo-edit'; then
    cargo install cargo-edit
  fi

  if dot13_installed_or_mark 'rust-bins'; then
    sudo dnf install file-devel
    cargo install bins
  fi

  if dot13_installed_or_mark 'cargo-watch'; then
    cargo install cargo-watch
  fi

  if dot13_installed_or_mark 'cargo-src'; then
    cargo install cargo-src
  fi

  if dot13_installed_or_mark 'cargo-bump'; then
    cargo install cargo-bump
  fi

  if dot13_installed_or_mark 'cargo-asm'; then
    cargo install cargo-asm
  fi

  if dot13_installed_or_mark 'rust-bin-nutrition'; then
    cargo install --git https://github.com/ernestas-poskus/nutrition --force
  fi

  if dot13_installed_or_mark 'rust-bin-wennsshein'; then
    cargo install --git https://github.com/ernestas-poskus/wennsshein --force
  fi

  if dot13_installed_or_mark 'rust-hyperfine'; then
    cargo install hyperfine
  fi

  if dot13_installed_or_mark 'rust-flamegraph'; then
    cargo install flamegraph
  fi

  if dot13_installed_or_mark 'cargo-rpm'; then
    cargo install cargo-rpm
  fi

  if dot13_installed_or_mark 'rust-ripgrep'; then
    cargo install ripgrep
  fi

  if dot13_installed_or_mark 'rust-procs'; then
    cargo install procs
  fi

  if dot13_installed_or_mark 'rust-cargo-call-stack'; then
    cargo install cargo-call-stack
  fi

  if dot13_installed_or_mark 'rust-zola'; then
    cargo install --git https://github.com/getzola/zola --force
  fi

   if dot13_installed_or_mark 'rust-bat'; then
     cargo install --git https://github.com/sharkdp/bat --force
   fi

  if dot13_installed_or_mark 'rust-skim'; then
    cargo install skim
  fi

  if dot13_installed_or_mark 'rust-bottom'; then
    cargo install bottom
  fi

  if dot13_installed_or_mark 'rust-analyzer'; then
    cargo install --bins rust-analyzer --git https://github.com/rust-analyzer/rust-analyzer --force
  fi

  if dot13_installed_or_mark 'rust-bat'; then
    cargo install bat
  fi

  if dot13_installed_or_mark 'rust-navi'; then
    cargo install navi
  fi

  if dot13_installed_or_mark 'rust-loc'; then
    cargo install loc
  fi

  if dot13_installed_or_mark 'rust-wrangler'; then
    cargo install wrangler
  fi

  if dot13_installed_or_mark 'rust-mcfly'; then
    cargo install mcfly
  fi

  if dot13_installed_or_mark 'rust-sd'; then
    cargo install sd
  fi

  if dot13_installed_or_mark 'rust-cargo-udeps'; then
    cargo install cargo-udeps
  fi
fi
