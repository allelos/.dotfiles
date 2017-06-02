export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# autoloads
autoload -U promptinit; promptinit
prompt pure
#
# autoload -U compinit
# autoload -U colors && colors
#
# PROMPT="%{$fg[yellow]%}%n %{$fg[red]%}$%{$reset_color%} "
# RPROMPT="%{$fg[red]%}%c%{$reset_color%}"
#
# # no beep
# setopt NO_BEEP
#
# # advanced tab completion
# compinit
#
# both ends completion
setopt completeinword

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# ls configuraiton
export CLICOLOR=1
export LSCOLORS=fxfxcxdxbxegedabagacad

# XTERM
export TERM=xterm-256color-italic

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

#aliases
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias mvim="open -a /Applications/MacVim.app"
alias ll="ls -l"

#fix path
export PATH="/usr/local/bin:$PATH"
export PATH=~/.local/bin:$PATH

#ruby specific
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"

# Gruvbox Shell
#GRUVBOX_SHELL="$HOME/.vim/bundle/gruvbox/gruvbox_256palette_osx.sh"
#[[ -s $GRUVBOX_SHELL ]] && source $GRUVBOX_SHELL
