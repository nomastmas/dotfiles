#!/bin/sh

# for syntax coloring in vim with tmux
alias tmux="TERM=screen-256color-bce tmux"

# ls aliases
alias ls='ls -lGFh'
alias ll='ls -l'
alias la='ls -la'

alias ip='ifconfig en0 | grep inet'

# python
alias activate="source env/bin/activate"
