if [ $(uname -s) = 'Linux' ]; then
  export LANG=en_US.UTF-8
  export LANGUAGE=en_US.UTF-8
  export LC_COLLATE=C
  export LC_CTYPE=en_US.UTF-8

  xmodmap_lock="/tmp/xmodmap.lock"

  # Remap keys
  if type -p xmodmap > /dev/null; then
    if [ ! -f "$xmodmap_lock" ]; then
      xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' # Caps Lock -> ESC
      xmodmap -e 'clear Lock' -e 'keycode 0x108 = BackSpace' # R Alt -> Backspace
      touch "$xmodmap_lock"
    fi
  fi
fi
