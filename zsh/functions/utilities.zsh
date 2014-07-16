function count() {
  find "$@" -type f | wc -l
}

# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$@"
}
