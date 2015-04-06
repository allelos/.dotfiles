# autoloads
autoload -U compinit
autoload -U colors && colors

PROMPT="%{$fg[cyan]%}%n %{$reset_color%}~ "
RPROMPT='%c'

# no beep
setopt NO_BEEP

# advanced tab completion
compinit

# both ends completion
setopt completeinword

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# ls configuraiton
export LSCOLORS=cxfxcxdxbxegedabagacad

#aliases
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

