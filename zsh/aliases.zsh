
# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

exa --version > /dev/null 2>&1
EXA_INSTALLED=$?
if [ $EXA_INSTALLED -eq 0 ]; then
  alias ll='exa -al'
  alias ls='exa'
else
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

nvim --version > /dev/null 2>&1
NEOVIM_INSTALLED=$?
if [ $NEOVIM_INSTALLED -eq 0 ]; then
  alias vim="nvim"
  export EDITOR=nvim
fi

# mimic vim functions
alias :q='exit'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# shortcuts
alias g='git'
alias t='todo.sh'
alias ap='ansible-playbook'
alias k='kubectl'
