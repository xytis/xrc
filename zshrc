#
# User configuration sourced by interactive shells
#

export LC_ALL=en_US.UTF-8

fpath+=(
  /opt/homebrew/share/zsh/site-functions
)

# Start zim
if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# Start direnv
eval "$(direnv hook zsh)"

# Start mise
eval "$(mise activate zsh)"

# Load custom definitions
[[ -d ${HOME}/.xrc/zsh ]] && for config_file (${HOME}/.xrc/zsh/*.zsh) source $config_file
