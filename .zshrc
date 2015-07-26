# autoloads
autoload -U compinit
autoload -U colors && colors

PROMPT="%{$fg[blue]%}%n %{$fg[red]%}$%{$reset_color%} " 
RPROMPT="%{$fg[red]%}%c%{$reset_color%}"

# no beep
setopt NO_BEEP

# advanced tab completion
compinit

# both ends completion
setopt completeinword

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# ls configuraiton
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

# XTERM
export TERM=xterm-256color

#aliases
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias mvim="open -a /Applications/MacVim.app"

#ruby specific
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
