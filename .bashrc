# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Comment out as long as using "all-bash-history"
HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=500000
export PROMPT_COMMAND="history -a"
export LANG=en_GB.UTF-8

# Coloured prompt:
# PS1="\e[32m\u \e[34m\w \e[37m\$ \e[0m"
PS1="[\t] \[\e[32m\]\u@\[\e[0m\]\h \[\e[34m\]\w \[\e[37m\]\$ \[\e[0m\]"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

alias ssh="TERM=xterm-256color ssh"
