# Ensure zsh corrects spelling
setopt correct
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Esure that vi mode is enabled
set -o vi

# Load keybindings indiferent from terminal
autoload zkbd

# Ensure zsh history is bound to up/down arrows
bindkey "${key[Up]}"    history-substring-search-up
bindkey "${key[Down]}"  history-substring-search-down

# Ensure Home/End still work on a line in vi mode
bindkey "${key[Home]}"  beginning-of-line
bindkey "${key[End]}"   end-of-line
