# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Prompt
#export PS1='\e[104m\[\u@\e[m\H\]\[[\e[92m\w\e[m]\e[0;42m\$\e[m '

#export PS1='\[\e[104m\[\u@\e[m\H\[[\e[92m\w\e[m]\e[0;42m\$\e[m '

export PS1='\[\e[104m\] \[\u@ \e[m \H\] \[\e[92m\] \[\w \e[m\] \[\e[0;42m\] \$ \[\e[m\] '

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export EDITOR="vim"
# User specific aliases and functions
alias vi="vim"
alias la="ls -la"
alias gs="git status"
alias src="source ~/.bashrc"
alias brc="vi ~/.bashrc"
