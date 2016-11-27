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

# docker
alias dco='docker-compose'
alias doc='docker'

# git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# tmuxinator
alias mux="tmuxinator"

# git
alias gg="git log --oneline --all --graph --color --decorate --abbrev-commit"

# virtualenv
function venv(){
    virtualenv --prompt="($1)" env
    activate
}
