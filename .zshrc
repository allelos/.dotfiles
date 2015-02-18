PROMPT='%n ~ '
RPROMPT='%c'

# no beep
setopt NO_BEEP

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# base16 shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#aliases
alias ls='ls -G'

