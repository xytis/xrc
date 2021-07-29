# Check if brew based ruby is used
RUBYPATH=$(brew --prefix ruby)
if [[ -d $RUBYPATH ]]; then
  path=(
    $RUBYPATH/bin
    $path
  )

  # Extract all gem catalogs and split by ':'
  split=(${(s/:/)$(gem environment gempath)})
  # Append bin dir to all gem locations
  gempath=(${^split}/bin)
  # Add all of the above to path
  path=(
    $gempath
    $path
  )
fi
