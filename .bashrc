# Custom PS1
if tty -s
then
PS1="\n\D{%m.%d.%y}|\t\n"                                              # Time
PS1+="\[$(tput sgr0)$(tput setaf 5)\]\u"                               # User
PS1+="\[$(tput bold)$(tput setaf 7)\]at"                               # at
PS1+="\[$(tput sgr0)$(tput setaf 6)\]\h"                               # hostname
PS1+="\[$(tput bold)$(tput setaf 7)\]in"                               # in
PS1+="\[$(tput sgr0)$(tput setaf 2)\]\w "                              # full working directory
PS1+="\[$(tput sgr0)$(tput setaf 1)\]\$(vcprompt -f '%b:%r%u%m')"      # vcprompt
PS1+="\[$(tput bold)$(tput setaf 7)\]\n\\$ \[$(tput sgr0)\]"           # $
export PS1
fi

# Set PATH
PATH=/usr/local/bin:/usr/local/sbin:~/local/bin:$PATH
export path

# Make vim the default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Functions for tmux window naming
settitle() {
    printf "\033k$1\033\\"
}

ssh() {
    settitle "$*"
    command ssh "$@"
    settitle `hostname`
}

# Aliases
alias ls='ls -G'
alias mtr='sudo mtr'
alias console='screen /dev/tty.usbserial'

# Make history file BIG
HISTFILESIZE=10000000
HISTSIZE=10000000

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
