
# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

eza --version > /dev/null 2>&1
EZA_INSTALLED=$?
if [ $EZA_INSTALLED -eq 0 ]; then
  alias ll='eza -al'
  alias ls='eza'
else
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

nvim --version > /dev/null 2>&1
NEOVIM_INSTALLED=$?
if [ $NEOVIM_INSTALLED -eq 0 ]; then
  alias vim="nvim"
  alias vimdiff="nvim -d"
  export EDITOR=nvim
fi

which trash > /dev/null 2>&1
TRASH_INSTALLED=$?
if [ $TRASH_INSTALLED -eq 0 ]; then
  alias rm="trash"
fi

bat --version > /dev/null 2>&1
BAT_INSTALLED=$?
if [ $BAT_INSTALLED -eq 0 ]; then
  alias cat="bat"
fi

# mimic vim functions
alias :q='exit'

# Git Aliases
alias g='git'
alias gs='git status'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gp='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gg='git grep'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Terraform
alias t='terraform'

# Ansible
alias ap='ansible-playbook'

# Kubernetes
alias k='kubectl'

# Pulumi
alias pul='pulumi'
