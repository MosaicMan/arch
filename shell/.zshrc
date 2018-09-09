# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="$terminfo[khome]"
key[End]="$terminfo[kend]"
key[Insert]="$terminfo[kich1]"
key[Backspace]="$terminfo[kbs]"
key[Delete]="$terminfo[kdch1]"
key[Up]="$terminfo[kcuu1]"
key[Down]="$terminfo[kcud1]"
key[Left]="$terminfo[kcub1]"
key[Right]="$terminfo[kcuf1]"
key[PageUp]="$terminfo[kpp]"
key[PageDown]="$terminfo[knp]"

# setup key accordingly
[[ -n "$key[Home]"      ]] && bindkey -- "$key[Home]"      beginning-of-line
[[ -n "$key[End]"       ]] && bindkey -- "$key[End]"       end-of-line
[[ -n "$key[Insert]"    ]] && bindkey -- "$key[Insert]"    overwrite-mode
[[ -n "$key[Backspace]" ]] && bindkey -- "$key[Backspace]" backward-delete-char
[[ -n "$key[Delete]"    ]] && bindkey -- "$key[Delete]"    delete-char
[[ -n "$key[Up]"        ]] && bindkey -- "$key[Up]"        up-line-or-history
[[ -n "$key[Down]"      ]] && bindkey -- "$key[Down]"      down-line-or-history
[[ -n "$key[Left]"      ]] && bindkey -- "$key[Left]"      backward-char
[[ -n "$key[Right]"     ]] && bindkey -- "$key[Right]"     forward-char

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        echoti smkx
    }
    function zle-line-finish () {
        echoti rmkx
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi

bindkey -v

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/juancq/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

eval "$(fasd --init auto)"
source ~/.shellrc
source ~/.aliases


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='
    --color fg:237,bg:-1,hl:2,fg+:4,bg+:-1,hl+:2
    --color info:237,prompt:4,spinner:1,pointer:2,marker:2
'
