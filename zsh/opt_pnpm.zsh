# Check if pnpm is installed
which pnpm 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  export PNPM_HOME="$HOME/.pnpm"

  path=(
    $PNPM_HOME
    $path
  )
fi
