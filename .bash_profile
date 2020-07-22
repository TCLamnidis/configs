export PS1='\[\e[0;90m\][\D{%T}] \[\e[m\]\[\e[1;32m\]\h:\[\e[m\] \[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.stack" ] ; then
    PATH="$HOME/.stack:$PATH"
fi

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias les='less -S'
alias ll='ls -hlF --group-directories-first --color=auto'
alias la='ls -A --group-directories-first --color=auto'
alias l='ls -CF --group-directories-first --color=auto'