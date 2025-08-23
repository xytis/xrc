echo "INIT"

# Plug brew
/opt/homebrew/bin/brew shellenv | source

# Plug rest of tooling
direnv hook fish | source
mise activate fish | source

# Do my stuff
for file in ~/.config/fish/.{functions*,exports*,aliases*,abbr*}.fish
  echo "loading" $file
  if test -r $file
    source "$file"
  end
end

if status is-interactive
    zoxide init fish | source
end

# vim: set expandtab filetype=fish ts=4 sw=4:
