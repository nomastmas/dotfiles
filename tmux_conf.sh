# Set a Ctrl-b shortcut for reloading your tmux config
bind r source-file ~/.tmux.conf

# Rename your terminals
set -g set-titles on
set -g set-titles-string '#(whoami)::#h::#(curl ipecho.net/plain;echo)'

# Set base index
set-window-option -g pane-base-index 1

# Status bar customization
set -g status-utf8 on
set -g status-bg black
set -g status-fg white
set -g status-interval 5
set -g status-left-length 90
set -g status-right-length 60
set -g status-left "#[fg=Green]#(whoami)#[fg=white]::#[fg=blue] \
(hostname -s)#[fg=white]::##[fg=yellow]#(curl ipecho.net/plain;echo)"

set -g status-justify left
set -g status-right '#[fg=Cyan]#S #[fg=white]%a %d %b %R' 

# Remap window navigation to vim
unbind-key j
bind-key j select-pane -D
unbind-key k
bind-key k select-pane -U
unbind-key h
bind-key h select-pane -L
unbind-key l
bind-key l select-pane -R

# Resize pane
bind-key J resize-pane -D 5
bind-key K resize-pane -U 5
bind-key H resize-pane -L 5
bind-key L resize-pane -R 5

# Split pane
bind-key v split-window -h
bind-key s split-window -v

# Remap prefix to C-a
unbind C-b
set -g prefix C-a
# bind 'C-a C-a' to type 'C-a'
bind C-a send-prefix

# for syntax coloring in vim
set -g default-terminal "xterm"

# update environment for ssh
set -g update-environment -r

# Reload tmux config
bind r source-file ~/.tmux.conf
