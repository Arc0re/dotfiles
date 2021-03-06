# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Get OS name
platform=`uname`

# Prompt
if [[ "$platform" == 'Linux' ]]; then
    export PS1='\[\e[104m\] \u \[\e[m\] @\H \[\e[92m\] \w \[\e[m\] \[\e[0;42m\] \$ \[\e[m\] '
elif [[ "$platform" == 'Darwin' ]]; then
    export PS1='\[\e[0;34m\]\u\[\e[m\]@\H\[\e[90m\] \w \[\e[m\] \[\e[0;34m\]\$\[\e[m\] '
fi

# Exports
export EDITOR="vim"
export PATH=/usr/local/Cellar/mono/4.2.1.102_1/bin:$PATH
export DEVKITPRO=/Users/thomasguyot/devkitPro
export DEVKITARM=${DEVKITPRO}/devkitARM
export CITRABIN=/Users/thomasguyot/Desktop/3ds/citra

# User specific aliases and functions
alias vi="vim"
alias la="ls -la"
alias gs="git status"
alias src="source ~/.bashrc"
alias brc="vi ~/.bashrc"
alias htop="sudo htop"
alias gdb="sudo gdb"
