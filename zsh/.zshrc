# - default
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

# - basic aliases
alias v=nvim
alias vi=nvim 
alias vim=nvim
alias python3=python3.14
alias love="/Applications/love.app/Contents/MacOS/love"
alias l="ls -C -t -U -p --color=auto"
alias la="ls -C -t -U -A -p --color=auto"

# - sourcing aliases
alias src="source ~/.config/zsh/.zshrc"
alias stmux="source ~/.config/tmux/tmux.conf"

# - git aliases
alias gs="git status"
alias gcm="git commit -m"
alias gpom="git push origin main"
alias lg="lazygit"
alias ff="fastfetch"
alias diary="pass self/jrnl -c ; jrnl diary"

# - export
export PATH="$HOME/.config/scripts:$PATH"
typeset -U path
export PATH
export EDITOR="nvim"
export MANPAGER="nvim +Man!"
export LESSHISTFILE=-

# - prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color '#7aa2f7'
zstyle :prompt:pure:git:branch color '#7dcfff'
zstyle :prompt:pure:git:dirty color '#e0af68'
zstyle :prompt:pure:virtualenv color '#e0af68'
zstyle :prompt:pure:prompt:success color '#9ece6a'
zstyle :prompt:pure:execution_time color '#bb9af7'
prompt pure

# - fzf
source <(fzf --zsh)

# - syntax highlighting
[[ -f "$HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# - src printout
fastfetch
