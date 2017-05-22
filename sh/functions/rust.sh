function ct() {
  if [ -f 'test' ]; then
    echo 'Test file found, running..'
    ./test "$@"
  else
    cargo test -- --nocapture
  fi
}
