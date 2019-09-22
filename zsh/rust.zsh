
export RUSTPATH="$HOME/.cargo"
[ -e $RUSTPATH ] || mkdir $RUSTPATH

path=(
  $path
  $RUSTPATH/bin
)
