# Check if go is used
which go 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  export GOPATH=$HOME/.go
  [ -e $GOPATH ] || mkdir $GOPATH

  path=(
    $GOPATH/bin
    $path
  )
fi
