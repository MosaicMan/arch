#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

eval "$(fasd --init auto)"
source ~/.shellrch
source ~/.aliases


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
