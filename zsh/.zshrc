# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source macintosh-zsh-configuration
if [[ -e "$HOME/.dots/zsh/zsh-config" ]]; then
  source "$HOME/.dots/zsh/zsh-config" 
fi
# Use macintosh zsh prompt
if [[ -e "$HOME/.dots/zsh/zsh-prompt" ]]; then
  source "$HOME/.dots/zsh/zsh-prompt"
fi

source "$HOME/.local/share/zsh/plugins/zsh-lazyload/zsh-lazyload.zsh"

# Load aliases and shortcuts if existent.
[ -f "$HOME/.dots/zsh/alias.zsh" ]       && source "$HOME/.dots/zsh/alias.zsh"
[ -f "$HOME/.dots/zsh/local.zsh" ]       && source "$HOME/.dots/zsh/local.zsh"
[ -f "$HOME/.dots/zsh/shortcut.zsh" ]    && source "$HOME/.dots/zsh/shortcut.zsh"
[ -f "$HOME/.dots/zsh/fzf-keybind.zsh" ] && source "$HOME/.dots/zsh/fzf-keybind.zsh"

