# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -F --color=auto'
alias ll='ls -Fl --color=auto'
alias la='ll -a'
#alias less='less -r'
alias pacman='pacman-color'
alias p='pacman-color'
alias y='yaourt'
alias s='sudo'

#export PS1='\[\033[0;32m\]\u\[\033[0;37m\]@\[\033[1;34m\]\h\[\033[0;37m\]:\[\033[0;31m\]\W \[\033[0;36m\]\$ \[\033[0m\]'
#for root
#export PS1='\[\033[0;31m\]\u\[\033[0;37m\]@\[\033[1;34m\]\h\[\033[0;37m\]:\[\033[0;31m\]\W \[\033[0;31m\]\$ \[\033[0m\]'
export PS1="\[\e[1;$((31 + $(hostname | cksum | cut -c1-3) % 6))m\]\h\[\e[0m\]:\w \u\$ "


shopt -s nocaseglob #fix regist
# Не перезаписывать файл истории, а добовлять
shopt -s histappend
# Не разрывать многострочные команды в истории
shopt -s cmdhist
# Встраивает переносы строки вместо двоеточий
shopt -s lithist
# Добавлять команды в историю немедленно
PROMPT_COMMAND='history -a'
# Хранить время выполнения команды
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '
export HISTSIZE="10000"

export GOPATH=/home/alex/go
export GOBIN=/home/alex/go/bin
export PATH=$GOPATH/bin:$PATH

export RUST_SRC_PATH=/home/alex/rust-src/src

# less colored output
#export LESS=-r
#export LESS_TERMCAP_me=$(printf '\e[0m')
#export LESS_TERMCAP_se=$(printf '\e[0m')
#export LESS_TERMCAP_ue=$(printf '\e[0m')
#export LESS_TERMCAP_mb=$(printf '\e[1;32m')
#export LESS_TERMCAP_md=$(printf '\e[1;34m')
#export LESS_TERMCAP_us=$(printf '\e[1;32m')
#export LESS_TERMCAP_so=$(printf '\e[1;44;1m')

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# «Эвристическое» исправление директорий
# работает *только* для cd
shopt -s cdspell

export BROWSER=google-chrome
export HISTCONTROL=ignoreboth
export EDITOR=vim
#export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
#    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
#    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export JAVA_FONTS=/usr/share/fonts/TTF
export PULSE_LATENCY_MSEC=20
export GDK_USE_XFT=1
export QT_XFT=true


if [ -f /etc/bash_completion ]; then  
. /etc/bash_completion
fi

complete -cf sudo
stty stop undef
stty start undef

settitle() {
	printf "\033k$1\033\\"
}

ssh() {
	settitle "$*"
	command ssh "$@"
	settitle "bash"
}

# jumping multiple levels up in a hierarchy
cd() {
    if [ "$1" == "-" ]; then
        popd > /dev/null;
        pwd
    elif [ -z "$1" ]; then
        pushd ~ >/dev/null;
    else
        pushd "$1" >/dev/null;
    fi
}
up() {
    if [[ -z "$1" ]]; then
        gotodir=..
    else
        gotodir="$1"
        local CDPATH=
        dir=$(pwd)
        while [[ $dir != / ]]; do
            dir=$(dirname "$dir")
            CDPATH+=:$dir
        done
    fi
    pushd "$gotodir" >/dev/null
    pwd
}
complete -o dirnames -o nospace -F _upcomp up
_upcomp() {
    local CDPATH=
    local IFS=$' \n\t'
    dir=$(pwd)
    while [[ $dir != / ]]; do
        dir=$(dirname "$dir")
        CDPATH+=:$dir
    done
    # Use the existing completion for cd
    _cd cd "$2" "$3"
}
