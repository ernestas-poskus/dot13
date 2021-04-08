#!/bin/bash

if dot13_installed_or_mark 'rust-rustup'; then
  curl https://sh.rustup.rs -sSf | sh
  rustup toolchain add nightly
  rustup component add rust-src
  rustup component add rustfmt
  rustup component add clippy
  rustup component add rls rust-analysis rust-src
  rustup target add x86_64-unknown-linux-musl
  rustup component add miri
fi

mkdir -p "$HOME/.cargo" &> /dev/null
# Add Carbo bin executables to $PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Exporting RUST_SRC_PATH
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

if which rustc > /dev/null; then
  if dot13_installed_or_mark 'rust-sccache'; then
    cargo install sccache
  fi

  export RUSTC_WRAPPER="sccache"

  if dot13_installed_or_mark 'rust-racer'; then
    cargo install -f racer
  fi

  if dot13_installed_or_mark 'rust-diesel_cli'; then
    sudo yum install libpq-devel
    cargo install -f diesel_cli --no-default-features --features postgres
  fi

  if dot13_installed_or_mark 'cargo-update'; then
    cargo install cargo-update
  fi

  if dot13_installed_or_mark 'cargo-edit'; then
    cargo install cargo-edit
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
    cargo install zola
  fi

   if dot13_installed_or_mark 'rust-bat'; then
     cargo install bat
   fi

  if dot13_installed_or_mark 'rust-skim'; then
    cargo install skim
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

  if dot13_installed_or_mark 'rust-cargo-expand'; then
    cargo install cargo-expand
  fi

  if dot13_installed_or_mark 'rust-cargo-cache'; then
    cargo install cargo-cache
  fi

  if dot13_installed_or_mark 'rust-gist-rs'; then
    cargo install gist-rs
  fi

  if dot13_installed_or_mark 'rust-rust_scan'; then
    cargo install rust_scan
  fi

  if dot13_installed_or_mark 'rust-outdated'; then
    cargo install cargo-outdated
  fi

  if dot13_installed_or_mark 'rust-audit'; then
    cargo install cargo-audit --features=fix
  fi

  if dot13_installed_or_mark 'rust-cargo-aws-lambda'; then
    cargo install cargo-aws-lambda
  fi

  if dot13_installed_or_mark 'rust-cargo-release'; then
    cargo install cargo-release
  fi

  if dot13_installed_or_mark 'rust-cargo-bloat'; then
    cargo install cargo-bloat
  fi

  if dot13_installed_or_mark 'rust-systemd-watch'; then
    cargo install systemfd cargo-watch
  fi
fi

if which rustup > /dev/null; then
  source <(rustup completions bash)
fi
