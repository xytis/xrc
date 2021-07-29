# Check if brew based java is used
JAVAPATH=$(brew --prefix openjdk)
if [[ -d $JAVAPATH ]]; then
  path=(
    $JAVAPATH/bin
    $path
  )
fi
