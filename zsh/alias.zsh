alias proxy="export http_proxy=http://127.0.0.1:7890;export https_proxy=http://127.0.0.1:7890;export socks_proxy=socks5://127.0.0.1:7891"
# alias inetproxy="export http_proxy=http://10.0.1.2:1082;export https_proxy=https://10.0.1.2:1082;export socks_proxy=socks5://10.0.1.2:1082"
alias inetproxy="export ALL_PROXY=socks5://10.0.1.2:1082"

alias unproxy="unset http_proxy;unset https_proxy;unset socks_proxy;unset ALL_PROXY"

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

alias vim="nvim"
alias grep="grep -v grep | grep"

alias lux='/home/luke/go/bin/lux'
alias bcutasr='/home/luke/miniforge3/bin/bcut_asr'

alias ssh="export TERM='xterm-kitty'; ssh"
