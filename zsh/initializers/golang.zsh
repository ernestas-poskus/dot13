export GO15VENDOREXPERIMENT=1

# GPM: Go Package Manager
if ! type -p gpm > /dev/null; then
wget https://github.com/pote/gpm/blob/master/bin/gpm && chmod +x gpm && sudo mv gpm /usr/local/bin
fi

# GVM provides an interface to manage Go versions.
# https://github.com/moovweb/gvm
export GVM_DIR="$HOME/.gvm"
if [ ! -d $GVM_DIR ]; then
  echo 'Install Golang Version manager'
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi
[[ -s ~/.gvm/scripts/gvm ]] && source ~/.gvm/scripts/gvm
export GOBIN="$GOPATH"/bin/
