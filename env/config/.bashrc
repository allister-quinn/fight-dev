export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.bash_eternal_history
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

if [ "$color_prompt" = no ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='ALLIDEV$ '

alias bashrc='nano ~/.bashrc'
alias sourceit='source ~/.bashrc'
alias c='clear && printf '\e[3J''

g () {
    grep -rni $1
}

h () {
    if [ $# -eq 0 ]; then
        history
    else
        history | grep $1
    fi
}