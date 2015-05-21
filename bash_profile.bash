
# source global definitions
if [ -f ~/.alias ]; then
   . ~/.alias
fi

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# ensure user libs take precedence
export PATH="/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:~/bin:$PATH"

#export PS1="\h:\W \u\$"
PERSON="\u"
PLACE="\h"
CWD="\w"
export PS1="[$PERSON@$PLACE:$CWD]\$ "

# enable colorized output for ls
# http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/ for more customization
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

[[ -s /Users/thomaswtsang/.nvm/nvm.sh ]] && . /Users/thomaswtsang/.nvm/nvm.sh  # This loads NVM

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export EDITOR=vim
export PAGER=less

clear
