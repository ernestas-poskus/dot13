export GO15VENDOREXPERIMENT=1

# GPM: Go Package Manager
if ! type -p gpm > /dev/null; then
wget https://github.com/pote/gpm/blob/master/bin/gpm && chmod +x gpm && sudo mv gpm /usr/local/bin
fi
