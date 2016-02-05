# vim: set syntax=sh:

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Prefer US English and use UTF-8.
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# History
shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTSIZE=""

# If there's rbenv, load it!
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Add homebrew to $PATH
export PATH=/opt/chefdk/bin:/Users/colbyolson/.rbenv/shims:/Users/colbyolson/src/scripts:/usr/local/bin:/usr/local/sbin:$PATH

export TZ="America/Los_Angeles"
export EDITOR='vim'
export GIT_EDITOR='vim'
export VIRTUALENV_USE_DISTRIBUTE="TRUE"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code

# Don't clear the screen after quitting a man page.
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

function hyde() { python ~/Code/bin/hyde/hyde.py "$1" "$2" "$3"; }

alias speed="wget --output-document=/dev/null http://speedtest.wdc01.softlayer.com/downloads/test500.zip"
alias wanip="curl http://ifconfig.co"

function ipinfo() { curl "http://ipinfo.io/$1"; }

# Nice WHOIS lookups.
alias pretty_whois="whois -h whois-servers.net"

export BLOG_PATH=/var/www/colbyolson.com

# Ruby related
alias be="bundle exec"

# Curl
export CURLOPT_SSL_VERIFYPEER="FALSE"
export SSL_CERT_FILE='/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt'

# Load other configs
if [ -d "${HOME}/.conf.d" ]; then
    for conf in ${HOME}/.conf.d/*; do
        if [ -r "${conf}" ]; then
            . "${conf}"
        fi
    done
fi
