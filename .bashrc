# vim: set syntax=sh:

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

shopt -s histappend # when you close a session, your history will be appended to the .bash_history file rather than overwriting
export HISTCONTROL=ignoreboth
export HISTIGNORE='ls:bg:fg:history:exit'
export HISTFILESIZE=1000000
export HISTSIZE=1000000

export PATH=~/src/scripts:$PATH

export TZ="America/Los_Angeles"
export EDITOR='vim'
export GIT_EDITOR='vim'
export PROJECT_HOME=$HOME/src

export MANPAGER="less -X"

alias please="sudo"

function create_new_ssh_config() {
    cat ~/.ssh/config.d/* > ~/.ssh/config
}

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
alias diff=colordiff

# Detect which `ls` flavor to use.
if ls --color > /dev/null 2>&1; then
        # GNU
        colorflag="--color"
    else
        # BSD
        colorflag="-G"
fi

# Stop wasting time searching through these directories.
export GREP_OPTIONS='--color=auto --exclude=*.pyc --exclude-dir=.git --exclude-dir=.vagrant --exclude=./var/cache/mage*'

alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls -Fph ${colorflag}"
alias la="ls -A"
alias ll="ls -al"
alias rm="rm -i"
alias l.="ls -d .* ${colorflag}"
alias ds="du -khs * | sort -n"
alias h="hostname"
alias j='z'
alias t="tmux"
alias serv="python -m SimpleHTTPServer $1"

alias speed="wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"
alias wanip="curl http://ifconfig.co"

function ipinfo() {
    curl "http://ipinfo.io/$1"
}
function zoom() { 
    open "zoommtg://zoom.us/join?action=join&confno=$1"
}

# Nice WHOIS lookups.
alias pretty_whois="whois -h whois-servers.net"
alias pune="TZ=Asia/Kolkata date"

export BLOG_PATH=/var/www/colbyolson.com

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Load other configs
if [ -d "${HOME}/.config.d" ]; then
    for conf in ${HOME}/.config.d/*; do
        if [ -r "${conf}" ]; then
            . "${conf}"
        fi
    done
fi
