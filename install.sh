#!/bin/sh

# Update repository
git stash &&
git pull --rebase &&
git submodule init &&
git submodule update &&
git stash pop

# Remove config file links in home folder
rm -f ~/.alias
#rm -f ~/.git-completion.sh
rm -f ~/.mybashrc
rm -f ~/.bash_profile
rm -f ~/.vimrc
rm -rf ~/.vim

# Link config files in home folder
ln -sf $PWD/alias.sh ~/.alias
ln -sf $PWD/bash_profile.bash ~/.bash_profile
ln -sf $PWD/vimrc ~/.vimrc
ln -sf $PWD/vim ~/.vim
#ln -sf ~/dotfiles/sh/git-completion.sh ~/.git-completion.sh
