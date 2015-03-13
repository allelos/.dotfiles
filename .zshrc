# autoloads
autoload -U compinit
autoload -U colors && colors

PROMPT="%{$fg[blue]%}%n %{$reset_color%}~ "
RPROMPT='%c'

# no beep
setopt NO_BEEP

# advanced tab completion
compinit

# both ends completion
setopt completeinword

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# base16 shell
# BASE16_SHELL="$HOME/.config/base16-shell/base16-atelierheath.light.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#aliases
alias ls='ls -G'
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

