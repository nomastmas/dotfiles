#!/bin/sh

# for syntax coloring in vim with tmux
alias tmux="TERM=screen-256color-bce tmux"

# ls aliases
alias ls='ls -lGFh'
alias ll='ls -l'
alias la='ls -la'

alias ip='ifconfig en0 | grep inet'

# python
alias act="source env/bin/activate"

# docker
alias dco='docker-compose'
alias doc='docker'

# git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.l 'log --oneline --all --graph --color --decorate --abbrev-commit'
git config --global alias.porch 'pull orchard master'
git config --global alias.psh "push origin $(git rev-parse --abbrev-ref HEAD)"

alias g='git'

# tmuxinator
alias mux="tmuxinator"

# virtualenv
function venv(){
    virtualenv --prompt="($1)" env
    act
}
