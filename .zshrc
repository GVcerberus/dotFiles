autoload -Uz compinit promptinit
compinit
promptinit

prompt suse

export TERM=xterm-256color

source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
