# prompt
COLOR1="\[\e[m\]"       # white
COLOR2="\[\e[1;32m\]"   # green
COLOR3="\[\e[1;34m\]"   # blue
COLOR4="\[\e[1;31m\]"   # red
if [ -n "$SSH_CLIENT" ]; then
    ssh_flag="${COLOR4}[ssh]"
fi
PS1="${ssh_flag}${COLOR1}[${COLOR2}\t${COLOR1}][${COLOR2}\u@\h${COLOR1}:${COLOR3}\w${COLOR1}]\n${COLOR2}$\[\e[m\] "

# aliases
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -lF'
alias la='ls -alF'
alias mkdir='mkdir -v'
alias ..='cd ..'
alias grep='grep --color=auto'
alias diff='colordiff'
alias o='clear; octave-cli'
alias p2='clear; python2'
alias p3='clear; python3'
alias tmuxkill='tmux kill-session -t'
alias fzf='fzf-tmux'

if [[ -t 0 && $- = *i* ]]; then
    # remove bash ctrl+S and ctrl+Q binds
    stty -ixon
    # remove forward search ctrl+S bind
    #bind -r '\C-s'
    # remove bash alt+num binds
    for i in "-" {0..9}; do bind -r "\e$i"; done
fi

# infinite bash history
HISTSIZE=
HISTFILESIZE=

# open tmux session automatically
if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then
     if [ -n "$SSH_CLIENT" ]; then
         tmux a || tmux
     else
         #exec tmux # exit with ctrl+D
         tmux
     fi
fi

# functions
if [[ -f ~/.functions ]]; then
    source ~/.functions
fi

# path
if [[ -f ~/.path ]]; then
    source ~/.path
fi
