# ####### export critical environment variable #######
# enables colorin the terminal bash shell export
export CLICOLOR=1

# enables colorfor iTerm
export TERM=xterm-256color

# proxy
export no_proxy=localhost,127.0.0.1,localaddress,.localdomain.com,www.bilibili.com,pub.flutter-io.cn,storage.flutter-io.cn

# flink environment
export FLINK_HOME="/Library/Flink/flink-1.10.0"

# java environment
export JAVA_HOME=$(/usr/libexec/java_home)
export CLASSPATH=.:$JAVA_HOME/lib:$FLINK_HOME/lib # :$JRE_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin:$FLINK_HOME/bin  # :$JRE_HOME/bin
# maven environment
export MAVEN_HOME="/opt/homebrew/Cellar/maven/3.8.1"
export PATH=$PATH:$MAVEN_HOME/bin

# scala environment
export SCALA_HOME="/Library/Scala/scala-2.13.3"
export PATH=$PATH:$SCALA_HOME/bin

# go env
export GO111MODULE="on"
export GOROOT="/opt/homebrew/opt/go/libexec"
export GOBIN=$GOROOT/bin
export GOARCH=arm64
export GOOS=darwin
export GOPATH=$HOME/.gopher
export GO111MODULE=on
export GOPROXY=https://proxy.golang.org
export PATH=$PATH:$GOBIN:$GOPATH/bin/darwin_arm64

# rabbitmq
export RABBIT_HOME="/usr/local/Cellar/rabbitmq/3.8.2"
export PATH="$RABBIT_HOME/sbin:$PATH"

# tldr
export TLDR_HEADER='magenta bold underline'
export TLDR_QUOTE='italic'
export TLDR_DESCRIPTION='green'
export TLDR_CODE='red'
export TLDR_PARAM='blue'

# custom command
export PATH=$PATH:$HOME/.dots/bin

# neovim
export EDITOR=nvim

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# ctags
alias ctags=/usr/local/bin/ctags

# homebrew
export PATH="/opt/homebrew/bin:$PATH"

# using GNU date
export PATH="/opt/homebrew/Cellar/coreutils/9.0_1/bin:$PATH"

# using MaTex
export PATH="/usr/local/texlive/2021/bin/universal-darwin:$PATH"

export DOCKER_HOST=ssh:luke@192.168.3.7

export PKG_CONFIG_PATH=/opt/homebrew/Cellar/zlib/1.2.11/lib/pkgconfig:/opt/homebrew/lib/pkgconfig

alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"

export PATH=/Applications/Hammerspoon.app/Contents/Frameworks/hs:$PATH

export PATH="/usr/local/mysql/bin:$PATH"
