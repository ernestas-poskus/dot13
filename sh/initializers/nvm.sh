export NVM_DIR="$HOME/.nvm"
if [ ! -d $NVM_DIR ]; then
  echo 'NVM not found'
  curl -L https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
fi
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
