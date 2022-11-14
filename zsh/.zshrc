# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

################## self-defined function & command ####################
function init() {
    if [[ -d ~/.oh-my-zsh ]] {
        # fortuen_lol_cow
        # figlet "Code Once" | lolcat -f
        # echo ""
    } else {
        echo "init the env"
        git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
        cd ~/.oh-my-zsh/plugins && \
        git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git && \
        git clone --depth=1 https://github.com/zsh-users/zsh-completions.git && \
        git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git && \
        cp -r ~/.dots/zsh/oh-my-zsh.sh ~/.oh-my-zsh/oh-my-zsh.sh && \
        figlet enjoy | lolcat -f
    }
}

function proxy () {
    if (( $# > 0 )) {
    case $1 {
        (-u)
            export http_proxy="$2://$3"
            export https_proxy=$http_proxy
            if (( $# > 1 )) {
                echo "🚀 set proxy to point $2://$3"
            } else {
                echo "🧩 not enough params"
            }
        ;|
        (-d)
            unset http_proxy
            unset https_proxy
            echo "⚓ unset proxy"
        ;;
    }
    } else {
        echo "current proxy status:"
        echo "🚇 http : $http_proxy"
        echo "🚆 https: $https_proxy"
    }
}

function gproxy () {
    if (( $# > 0 )) {
        case $1 {
            (-u)
            git config --global http.proxy "$2://$3"
            git config --global https.proxy "$2://$3"
            if (( $# > 1 )) {
                echo "🚀 set git proxy to point $2://$3"
            } else {
                echo "🧩 not enough params"
            }
            ;|
            (-d)
                git config --global --unset http.proxy
                git config --global --unset https.proxy
                echo "⚓ unset proxy"
            ;;
        }
    } else {
        local ghttp=$(git config --global --get http.proxy)
        local ghttps=$(git config --global --get https.proxy)
        echo "current git proxy status:"
        echo "🚇 http :  $ghttp"
        echo "🚆 https: $ghttps"
    }
}

function fortuen_lol_cow () {
    COLS=$(tput cols)
    if (( $COLS > 80 )) {
    COLS=80
    }
    # echo $COLS
    fortune -a | cowsay -W $(( ${COLS}-8 )) | lolcat -f
}

#.# Better Git Logs.
### Using EMOJI-LOG (https://github.com/ahmadawais/Emoji-Log).
# Git Commit, Add all and Push — in one step.
function gcap() {
    git add . && git commit -m "$*"
}
# NEW.
function gnew() {
    gcap "📦 NEW: $@"
}
# IMPROVE.
function gimp() {
    gcap "👌 IMPROVE: $@"
}
# FIX.
function gfix() {
    gcap "🐛 FIX: $@"
}
# RELEASE.
function grlz() {
    gcap "🚀 RELEASE: $@"
}
# DOC.
function gdoc() {
    gcap "📖 DOC: $@"
}
# TEST.
function gtst() {
    gcap "✅ TEST: $@"
}
################## self-defined function & command ####################
# enables colorin the terminal bash shell export
export CLICOLOR=1

# enables colorfor iTerm
export TERM=xterm-256color

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "refined" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    colored-man-pages
    extract
    git
    z
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)

init

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/zsh/shortcut.zsh" ] && source "$HOME/.config/zsh/shortcut.zsh"
[ -f "$HOME/.config/zsh/alias.zsh" ] && source "$HOME/.config/zsh/alias.zsh"
[ -f "$HOME/.config/zsh/local.zsh" ] && source "$HOME/.config/zsh/local.zsh"
[ -f "$HOME/.config/zsh/local.zsh" ] && source "$HOME/.config/zsh/local.zsh"
[ -f "$HOME/.config/zsh/fzf-keybind.zsh" ] && source "$HOME/.config/zsh/fzf-keybind.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
