which thefuck 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  eval $(thefuck --alias)
fi
