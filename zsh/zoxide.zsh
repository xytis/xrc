which zoxide 2>&1 >/dev/null
if [ $? -eq 0 ]; then
  eval "$(zoxide init zsh)"
fi
