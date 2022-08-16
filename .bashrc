#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --hyperlink=auto'
alias la='ls -a'
alias lla='ls -la'
PS1='[\u@\h \W]\$ '

export PATH="~/scripts:$PATH"
