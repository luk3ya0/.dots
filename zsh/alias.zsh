######################## personal aliases ############################
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias cls='colorls'
alias ping='prettyping -c 10'
alias vi="nvim"
alias du='ncdu'
alias pip3='python3 -m pip'
alias tmux="TERM=screen-256color-bce tmux"
alias dops="docker ps --format='table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}\t{{.Ports}}'"
alias urlen='python3 -c "import sys, urllib.parse as ulp; print(ulp.quote(sys.argv[1]))"'
alias urlde='python3 -c "import sys, urllib.parse as ulp; print(ulp.unquote(sys.argv[1]))"'
alias nadb="/Applications/Nox\ App\ Player.app/Contents/MacOS/adb"
alias vi='nvim'
alias vim='nvim'
alias ls='ls -G --color'
alias drawio='/Applications/draw.io.app/Contents/MacOS/draw.io'

alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

# alias go='http_proxy=http://127.0.0.1:1087/ https_proxy=http://127.0.0.1:1087/ no_proxy=localhost,127.0.0.0/8,::1 go'

