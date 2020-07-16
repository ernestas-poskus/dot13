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

if dot13_installed_or_mark 'build-autoconf'; then
  sudo dnf install autoconf
fi

if dot13_installed_or_mark 'build-cmake'; then
  sudo dnf install cmake
fi

if dot13_installed_or_mark 'mysql-devel'; then
  sudo dnf install mysql-devel mysql
fi

if dot13_installed_or_mark 'fedora-opnessl-zlib'; then
  sudo dnf install -y openssl-devel zlib-devel
fi

if dot13_installed_or_mark 'fedora-llvm'; then
  sudo dnf install -y llvm llvm-devel
fi

if dot13_installed_or_mark 'fedora-tlp'; then
  sudo dnf install https://repo.linrunner.de/fedora/tlp/repos/releases/tlp-release.fc$(rpm -E %fedora).noarch.rpm
  sudo dnf install tlp tlp-rdw akmod-tp_smapi akmod-acpi_call smartmontools
fi
