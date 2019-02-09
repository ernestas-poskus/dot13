#!/bin/bash

if dot13_installed_or_mark 'fedora-rpmfusion-free-release'; then
  sudo dnf install "https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm"
fi
