# Dotnet is manual
DOTNETPATH="/usr/local/share/dotnet/"
if [[ -d $DOTNETPATH ]]; then
  path=(
    $DOTNETPATH
    $path
  )
fi
