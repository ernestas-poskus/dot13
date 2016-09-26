function randompassword() {
  date +%s | sha256sum | base64 | head -c 32 | xsel --clipboard
}
