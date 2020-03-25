#!/bin/bash

if dot13_installed_or_mark 'fedora-dev-tools'; then
  sudo dnf groupinstall "Development Tools"
fi

if dot13_installed_or_mark 'fedora-rpmfusion-free-release'; then
  sudo dnf install "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm"
fi

if dot13_installed_or_mark 'fedora-fzf'; then
  sudo dnf install fzf
fi

if dot13_installed_or_mark 'fedora-fd-find'; then
  sudo dnf install fd-find
fi
