# Custom prompt
PS1="\n\t\n"	                                	        	# Time
PS1+="\[$(tput sgr0)$(tput setaf 5)\]\u"		        	# User
PS1+="\[$(tput bold)$(tput setaf 7)\]at"		        	# at
PS1+="\[$(tput sgr0)$(tput setaf 6)\]\h" 		        	# hostname
PS1+="\[$(tput bold)$(tput setaf 7)\]in"		        	# in
PS1+="\[$(tput sgr0)$(tput setaf 2)\]\w "		        	# full working directory
PS1+="\[$(tput sgr0)$(tput setaf 1)\]\$(vcprompt -f '%b:%r%u%m')"	# vcprompt
PS1+="\[$(tput bold)$(tput setaf 7)\]\n\\$ \[$(tput sgr0)\]"    	# $
export PS1

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# Set PATH
PATH=/usr/local/bin:/usr/local/sbin:~/local/bin:$PATH
export path

# To set tmux/screen window name to hostname
settitle() {
    printf "\033k$1\033\\"
}

ssh() {
    settitle "$*"
    command ssh "$@"
    settitle `hostname`
}

#Make vim the default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Set GNU readline to Vim mode
set -o vi

# Aliases
alias mtr='sudo mtr'
