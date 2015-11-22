if [ $(uname -s) = 'Linux' ]; then
  export LANG=en_US.UTF-8
  export LANGUAGE=en_US.UTF-8
  export LC_COLLATE=C
  export LC_CTYPE=en_US.UTF-8

  # Remap keys
  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' # Caps Lock -> ESC
  xmodmap -e 'clear Lock' -e 'keycode 0x6c = BackSpace' # R Alt -> Backspace
fi
