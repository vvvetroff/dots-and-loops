DISABLE_AUTO_TITLE="true"
autoload -U colors && colors
autoload -U compinit && compinit
zmodload zsh/complist

# - history
HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# - aliases
# -- basic
alias vi=nvim 
alias vim=nvim
alias python3=python3.12
alias love="/Applications/love.app/Contents/MacOS/love"
alias l="eza -la"
# -- python venv
alias av="source bin/activate"
alias dv="deactivate"
# -- sourcing
alias szsh="source ~/.config/zsh/.zshrc"
alias stmux="source ~/.config/tmux/tmux.conf"
# -- git
alias gs="git status"
alias gcob="git checkout -b"
alias gcm="git commit -m"
alias gpom="git push origin main"

# - export
export PATH="/usr/local/Cellar/python@3.12/3.12.7/bin:$PATH"
typeset -U path
export PATH
export EDITOR="nvim"
export MANPAGER="nvim +Man!"

# prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color '#569cd6'
zstyle :prompt:pure:git:branch color '#9cdcfe'
zstyle :prompt:pure:git:dirty color '#d7ba7d'
zstyle :prompt:pure:virtualenv color '#d7ba7d'
zstyle :prompt:pure:prompt:success color '#56b97f'
zstyle :prompt:pure:execution_time color '#c586c0'
prompt pure

# - fzf
source <(fzf --zsh)

# syntax highlighting
[[ -f "$HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
