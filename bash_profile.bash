
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

# . ~/.ssh/saveagent

# for ssh forwarding in tmux
# credit to: https://robinwinslow.co.uk/2012/07/20/tmux-and-ssh-auto-login-with-ssh-agent-finally/
# If we're in the console -- the "real" one -- set these vars. Otherwise
# stuff goes foobar on the zsh prompt etc.
if [ -z "$SSH_TTY" ]; then
        export TERM=xterm
        export TMOUT=300
    elif [ -z "$TMUX" ]; then
        # Give us a chance not to go into tmux.
        /usr/local/bin/count_to_three
        export SSH_AUTH_SOCK="$HOME/.ssh/auth_socket"
        # if the agent socket is not available create the new auth session
    if [ ! -S "$SSH_AUTH_SOCK" ]; then
        ssh-agent -a $SSH_AUTH_SOCK > /dev/null 2>&1
        # Add the ssh-keys.
        echo " Starting tmux session..."
        ssh-add 2>/dev/null
    fi
        # start tmux
        exec tmux -u attach -d
fi
