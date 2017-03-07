function backup() {
  mkdir "$HOME/BU" &> /dev/null
  mv $@ "$HOME/BU"
}
