#!/bin/bash

if dot13_installed_or_mark 'yum-ShellCheck'; then
  sudo yum install -y ShellCheck
fi
