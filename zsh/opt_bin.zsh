# Custom binaries
BINPATH="$HOME/.bin"
if [[ -d $BINPATH ]]; then
  if [[ -f $BINPATH/.nested.zsh ]]; then
    source $BINPATH/.nested.zsh
  fi
  path=(
    $BINPATH
    $path
  )
fi
