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

# Setup powerline fonts
cd ~/dev; git clone https://github.com/powerline/fonts.git; cd fonts; ./install.sh

# Setup powerline
virtualenv -q --prompt="(dot)" env
env/bin/pip install -q powerline-status

# Install Plugins
vim +PluginInstall +qall
