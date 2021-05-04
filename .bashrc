# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

#history
HISTSIZE=
HISTFILESIZE=
HISTTIMEFORMAT="%F %T: "

# Let there be color in grep!
export GREP_OPTIONS=' — color=auto'

# Set Vim as my default editor
export EDITOR=vim

#color
force_color_prompt=yes
PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

#alias
alias ll="ls -lv --group-directories-first"
alias ccat='pygmentize -g'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'

