GOPATH=${HOME}/.go

# ---
echo "Installing go"
rm -rf $GOPATH
mkdir -p $GOPATH
curl -L -o $GOPATH/go.tar.gz https://go.dev/dl/go1.22.5.linux-amd64.tar.gz
tar -zvxf $GOPATH/go.tar.gz -C $GOPATH 1>/dev/null
echo $GOPATH
mv -f $GOPATH/go/* $GOPATH/
rm -rf $GOPATH/go.tar.gz

mkdir -p ${HOME}/.go-workspace
