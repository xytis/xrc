# Check if brew based java is used
JAVAPATH=/usr/local/opt/openjdk
if [[ -d $JAVAPATH ]]; then
  path=(
    $JAVAPATH/bin
    $path
  )
fi
