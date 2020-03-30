# Ensure zsh corrects spelling
setopt correct
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Esure that vi mode is enabled
set -o vi

# Ensure zsh history is bound to up/down arrows
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
