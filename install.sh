#!/bin/sh

# Remove config file links in home folder
rm -f ~/.alias
rm -f ~/.mybashrc
rm -f ~/.git-completion.bash
rm -f ~/.bash_profile
rm -f ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.tmux.conf

# Link config files in home folder
ln -sf $PWD/alias.sh ~/.alias
ln -sf $PWD/vimrc ~/.vimrc
ln -sf $PWD/vim ~/.vim
ln -sf $PWD/tmux_conf.sh ~/.tmux.conf
ln -sf $PWD/git-completion.bash ~/.git-completion.bash
ln -sf $PWD/bash_profile.bash ~/.bash_profile

# Setup Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Plugins
vim +PluginInstall +qall
