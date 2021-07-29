# Check if brew based nvm is used
NVMPATH=$(brew --prefix nvm)
if [[ -d $NVMPATH ]]; then
  NVM_DIR=$HOME/.nvm
  [ -e $NVM_DIR ] || mkdir $NVM_DIR
  [ -s "$NVMPATH/nvm.sh" ] && \. "$NVMPATH/nvm.sh" # This loads nvm
  [ -s "$NVMPATH/bash_completion" ] && \. "$NVMPATH/bash_completion"  # This loads nvm bash_completion
fi
