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

# Install Plugins
if [ -d "~/.vim/bundle/Vundle.vim/" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install custom themes and plugins
cp -a $PWD/zsh/nomas.zsh-theme ~/.oh-my-zsh/custom/themes/nomas.zsh-theme
