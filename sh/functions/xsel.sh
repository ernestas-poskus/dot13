#!/bin/bash

function copy() {
  xsel --clipboard
}

function lastcmd() {
  fc -ln -1 | awk '{$1=$1}1' | xsel --clipboard
}
