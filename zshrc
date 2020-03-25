#
# User configuration sourced by interactive shells
#

export LC_ALL=en_US.UTF-8

path=(
  /usr/local/bin
  /usr/bin
  /bin
  /usr/local/sbin
  /usr/sbin
  /sbin
)

# Change default zim location
export ZIM_HOME=${HOME}/.xrc/zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Start direnv
eval "$(direnv hook zsh)"

# Load custom definitions
[[ -d ${HOME}/.xrc/zsh ]] && for config_file (${HOME}/.xrc/zsh/*.zsh) source $config_file
