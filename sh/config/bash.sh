# PS1 config
DOT13_PREFIX="\e[91mλ \e[92m$(hostname)"
DOT13_POSTFIX='$ '
PS1="$DOT13_PREFIX \e[33m\$(git_current_branch) \[\033[01;34m\]\w\[\033[00m\]\n\$DOT13_POSTFIX"
