eval "$(/usr/local/bin/brew shellenv)"

# ####### export critical environment variable #######
# enables colorin the terminal bash shell export
export CLICOLOR=1

# enables colorfor iTerm
# export TERM=kitty

# proxy
export no_proxy=localhost,127.0.0.1,localaddress,.localdomain.com,www.bilibili.com,pub.flutter-io.cn,storage.flutter-io.cn

# flink environment
# export FLINK_HOME="/Library/Flink/flink-1.10.0"

# java environment
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
# export JAVA_HOME=$(/usr/libexec/java_home -v 17)
# export PATH="$PATH:$JAVA_HOME/bin"
# export CLASSPATH=".:$JAVA_HOME/lib"
# maven environment
# export MAVEN_HOME="/opt/homebrew/Cellar/maven/3.8.1"
# export PATH=$PATH:$MAVEN_HOME/bin

# scala environment
# export SCALA_HOME="/Library/Scala/scala-2.13.3"
# export PATH=$PATH:$SCALA_HOME/bin

# rabbitmq
# export RABBIT_HOME="/usr/local/Cellar/rabbitmq/3.8.2"
# export PATH="$RABBIT_HOME/sbin:$PATH"

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

# docker
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"

lazyconda () {
  __conda_setup="$('/Users/luke/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  eval "$__conda_setup"
}

lazyload conda -- 'lazyconda'
