# GVM provides an interface to manage Go versions.
# https://github.com/moovweb/gvm
export GVM_DIR="$HOME/.gvm"
if [ ! -d $GVM_DIR ]; then
  echo 'Install Golang Version manager'
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi
[[ -s ~/.gvm/scripts/gvm ]] && source ~/.gvm/scripts/gvm
export GOBIN="$GOPATH"/bin/
