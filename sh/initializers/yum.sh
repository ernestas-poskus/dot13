#!/bin/bash

if dot13_installed_or_mark 'yum-ShellCheck'; then
  sudo yum install -y ShellCheck
fi

if dot13_installed_or_mark 'yum-jq'; then
  sudo yum install -y jq
fi

if dot13_installed_or_mark 'yum-graphviz-gv'; then
  sudo yum install -y graphviz gv
fi
