# Reference: https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# If set, a command name that is the name of a directory is executed as if it were the argument to the cd command.
shopt -s autocd

# If set, a command name that is the name of a directory is executed as if it were the argument to the cd command.
shopt -s cdable_vars

# If set, minor errors in the spelling of a directory component in a cd command will be corrected.
# The errors checked for are transposed characters, a missing character, and a character too many.
# If a correction is found, the corrected path is printed, and the command proceeds.
shopt -s cdspell

# If set, the extended pattern matching features described above (see Pattern Matching) are enabled.
shopt -s extglob
