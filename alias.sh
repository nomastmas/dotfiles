#!/bin/sh

# for syntax coloring in vim with tmux
alias tmux="TERM=screen-256color-bce tmux"

# SSH aliases
alias sshtech="ssh tech-sandbox-dev.2u.com -A"
alias sshjenkinsqa="ssh tech-jenkins-qa.2u.com -A"

# ls aliases
alias ls='ls -lGFh'
alias ll='ls -l'
alias la='ls -la'

alias ip='ifconfig en0 | grep inet'

alias activate='. env/bin/activate'
