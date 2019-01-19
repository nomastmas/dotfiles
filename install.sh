#!/bin/sh

set -x 

# Link config files in home folder
cp -a $PWD/alias ~/.alias
cp -a $PWD/vimrc ~/.vimrc
rsync -r $PWD/vim/ ~/.vim
cp -a $PWD/tmux_conf ~/.tmux.conf
cp -a $PWD/git-completion.bash ~/.git-completion.bash
cp -a $PWD/bash_profile ~/.bash_profile
cp -a $PWD/work ~/.work
cp -a $PWD/zsh/zshrc ~/.zshrc

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install custom themes and plugins
cp -a $PWD/zsh/nomas.zsh-theme ~/.oh-my-zsh/custom/themes/nomas.zsh-theme
