alias 'clash'='nohup /opt/clash/clash -f ~/.config/clash/config.yaml -d ~/.config/clash > /dev/null 2>&1 &'                  
alias 'unclash'='pkill -9 clash'

alias proxy="export http_proxy=http://127.0.0.1:7890;export https_proxy=http://127.0.0.1:7890;export socks_proxy=socks5://127.0.0.1:7891"
alias inetproxy="export http_proxy=http://10.0.1.2:1082;export https_proxy=http://10.0.1.2:1082;export socks_proxy=socks5://10.0.1.2:1082"
alias unproxy="unset http_proxy;unset https_proxy"
alias vim="nvim"

alias grep="grep -v grep | grep"

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
