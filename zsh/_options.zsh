# Ensure zsh corrects spelling
setopt correct
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Esure that vi mode is enabled
set -o vi

# Ensure zsh history is bound to up/down arrows
bindkey "$terminfo[kcuu1]"  history-substring-search-up
bindkey "$terminfo[kcud1]"  history-substring-search-down

# Ensure Home/End still work on a line in vi mode
bindkey "$terminfo[khome]"  beginning-of-line
bindkey "$terminfo[kend]"   end-of-line
