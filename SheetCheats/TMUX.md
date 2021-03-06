































https://epwalsh.com/2016-08-03-ultimate-tmux-config/

# set Ctrl-a as the default prefix key combination
# and unbind C-b to free it up
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# shorten command delay
set -sg escape-time 1

# set window and pane index to 1 (0 by default)
set-option -g base-index 1
setw -g pane-base-index 1

# Windows ----------------------------------------------------------------
# Make the current window the first window
bind T swap-window -t 1

# Key bindings ----------------------------------------------------------- 
# Resize pane with option + arrow keys
bind -n M-Left resize-pane -L 10
bind -n M-Right resize-pane -R 10
bind -n M-Down resize-pane -D 10
bind -n M-Up resize-pane -U 10

# Select pane with ctrl + vim nav keys
bind-key l select-pane -R
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U

# Intuitive window splits
bind-key | split-window -h -c "#{pane_current_path}"
bind-key _ split-window -v -c "#{pane_current_path}"

# Easily source config while in tmux
bind-key r source-file ~/.tmux.conf

# Vim keybindings
set -g mode-keys vi

# Copying and pasting
unbind p
bind p paste-buffer
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection
# ------------------------------------------------------------------------ 

# Mouse support ---------------------------------------------------------- 
setw -g mode-mouse off
set -g mouse-select-pane off
set -g mouse-resize-pane off
set -g mouse-select-window off
# ------------------------------------------------------------------------

set -g status on
set -g status-utf8 on
set-window-option -g utf8 on

# Make colors work
set -g terminal-overrides 'xterm*:smcup@:rmcup@'
set -g default-terminal "screen-256color"

# Panes
set -g pane-border-fg black
set -g pane-active-border-fg brightred

# Status line ------------------------------------------------------------ 
# set -g status-utf8 on
set -g status-justify left
set -g status-bg default
set -g status-fg colour12
set -g status-interval 2
# ------------------------------------------------------------------------ 

# Messages --------------------------------------------------------------- 
set -g message-fg black
set -g message-bg yellow
set -g message-command-fg blue
set -g message-command-bg black
# ------------------------------------------------------------------------ 

# Window mode
setw -g mode-bg colour6
setw -g mode-fg colour0

# Window status ---------------------------------------------------------- 
setw -g window-status-format " #F#I:#W#F "
setw -g window-status-current-format " #F#I:#W#F "
setw -g window-status-format "#[fg=magenta]#[bg=black] #I #[bg=cyan]#[fg=colour8] #W "
setw -g window-status-current-format "#[bg=brightmagenta]#[fg=colour8] #I #[fg=colour8]#[bg=colour14] #W "
setw -g window-status-current-bg colour0
setw -g window-status-current-fg colour11
setw -g window-status-current-attr dim
setw -g window-status-bg green
setw -g window-status-fg black
setw -g window-status-attr reverse
# ------------------------------------------------------------------------ 

set -g status-left ''

# Modes ------------------------------------------------------------------ 
setw -g clock-mode-colour colour135
setw -g mode-attr bold
setw -g mode-fg colour196
setw -g mode-bg colour238
# ------------------------------------------------------------------------ 

# Panes ------------------------------------------------------------------ 
set -g pane-border-bg colour235
set -g pane-border-fg colour238
set -g pane-active-border-bg colour236
set -g pane-active-border-fg colour51
# ------------------------------------------------------------------------ 

# Status bar ------------------------------------------------------------- 
set -g status-position bottom
set -g status-bg colour237
set -g status-fg colour137
set -g status-attr dim
set -g status-left ''

# See https://www.tylerewing.co/tmux-now-playing for now playing
#set -g status-right '#[fg=colour81]♪ #(~/bin/now_playing.sh) #(~/bin/battery.sh) #[fg=colour233,bg=colour241,bold] %a %m-%d #[fg=colour233,bg=colour245,bold] %H:%M:%S '
set -g status-right '#[fg=colour233,bg=colour241,bold] %a %m-%d #[fg=colour233,bg=colour245,bold] %H:%M:%S '

set -g status-right-length 100
set -g status-left-length 30

setw -g window-status-current-fg colour81
setw -g window-status-current-bg colour237
setw -g window-status-current-attr bold
setw -g window-status-current-format ' [#I:#P]#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F '

setw -g window-status-fg colour138
setw -g window-status-bg colour235
setw -g window-status-attr none
setw -g window-status-format ' [#I:#P]#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

setw -g window-status-bell-attr bold
setw -g window-status-bell-fg colour255
setw -g window-status-bell-bg colour1
# ------------------------------------------------------------------------ 

# Messages --------------------------------------------------------------- 
set -g message-attr bold
set -g message-fg colour232
set -g message-bg colour166