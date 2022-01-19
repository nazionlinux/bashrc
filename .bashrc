# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias dir='ls --color=auto'
alias cd..='cd ..'
alias grep='grep --color=auto'
export GREP_COLOR='0;31'
#PS1='[\u@\h \W]\$ '
PS1='\[\e[1;32m\]\h\[\e[m\]@\[\e[1;31m\]\u\[\e[m\] \[\e[1;93m\]\w\[\e[m\] \[\e[0;34m\]\$\[\e[m\] '

## colorare il comando man
man() {
env \
LESS_TERMCAP_mb=$'\e[01;31m' \
LESS_TERMCAP_md=$'\e[01;31m' \
LESS_TERMCAP_me=$'\e[0m' \
LESS_TERMCAP_se=$'\e[0m' \
LESS_TERMCAP_so=$'\e[01;44;33m' \
LESS_TERMCAP_ue=$'\e[0m' \
LESS_TERMCAP_us=$'\e[01;32m' \
man "$@"
}

## Void Xbps Alias
##----------------
## Xbps Up Date aggiorna il database
xud() { xbps-install -S; }
## Xbps Up Grade aggiorna il database dei pacchetti e aggiorna la distrbuzione equivale a dist-upgrade di Debian
xug() { xbps-install -Su; }
## Xbps Up Grade Yes aggiorna il database dei pacchetti e aggiorna la distrbuzione senza chiedere conferma
xugy() { xbps-install -Syu; }
## Xbps Install Package installa molteplici pacchetti
xip() { xbps-install -S $*; }
## Xbps Install Package installa singolo pacchetto
#xip() { xbps-install -S $1; }
## Xbps Update Package aggiorna un singolo pacchetto
xup() { xbps-install -u $1; }
## Xbps Search Package cerca pacchetto
xsp() { xbps-query -Rs $1; }
## Xbps Remove Package rimuove il pacchetto
xrp() { xbps-remove $1; }
## Xbps Remove Package Dependencies (Deep) rimuove il pacchetto e le sue dipendenze
xrpd() { xbps-remove -R $1; }
## Xbps Remove & Clean rimuove i pacchetti orfani e pulisce la cache del repository
xrc() { xbps-remove -Oo; }
