# To enable this integration, do the following:
#    export NVM_DIR="$HOME/.nvm" && (
#      git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
#      cd "$NVM_DIR"
#      git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
#    )
# Check if nvm is used
if [ -d $HOME/.nvm ]; then
  NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
