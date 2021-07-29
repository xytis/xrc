# Check if go is used
GOPATH=$(brew --prefix go)
if [[ -d $GOPATH ]]; then
  export GOPATH=$HOME/.go
  [ -e $GOPATH ] || mkdir $GOPATH

  path=(
    $GOPATH/bin
    $path
  )
fi
