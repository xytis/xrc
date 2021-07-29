# Check if brew based rustup is used
which rustup-init 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  export RUSTPATH="$HOME/.cargo"
  [ -e $RUSTPATH ] || mkdir $RUSTPATH

  path=(
    $RUSTPATH/bin
    $path
  )
fi
