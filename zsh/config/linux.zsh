if [ $(uname -s) = 'Linux' ]; then
  source "$DOT_PATH_LINUX/.linux_exports"

  # Remap keys
  xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' # Caps Lock -> ESC
  xmodmap -e 'clear Lock' -e 'keycode 0x6c = BackSpace' # R Alt -> Backspace
fi
