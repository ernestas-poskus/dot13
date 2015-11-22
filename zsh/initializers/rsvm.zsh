export RSVM_DIR="$HOME/.rsvm"
if [ ! -d $RSVM_DIR ]; then
  echo 'Installing Rust Version manager'
  curl -L https://raw.github.com/sdepold/rsvm/master/install.sh | sh
fi
[[ -s ~/.rsvm/rsvm.sh ]] && . ~/.rsvm/rsvm.sh # This loads RSVM
