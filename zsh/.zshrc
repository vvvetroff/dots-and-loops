# - default
DISABLE_AUTO_TITLE="true"
autoload -U colors && colors
zmodload zsh/complist
autoload -U compinit && compinit
zstyle ':completion:*' menu select   # arrow-key menu on Tab; delete if unwanted

# - variables
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"
export LESSHISTFILE=/dev/null

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
alias love="/Applications/love.app/Contents/MacOS/love"
alias l="ls -t -U -p --color=auto"
alias la="ls -t -U -A -p --color=auto"
alias c=clear
alias cl=clear
alias domp="docker compose"
alias src="source ~/.config/zsh/.zshrc"
alias smux="source ~/.config/tmux/tmux.conf"
alias gs="git status"
alias gcm="git commit -m"
alias gpom="git push origin main"
alias lg="lazygit"
alias ff="fastfetch"

# - export
typeset -U path
path="$HOME/.config/scripts:$PATH"

# - prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:git:branch color 'cyan'
zstyle :prompt:pure:git:dirty color 'yellow'
zstyle :prompt:pure:virtualenv color 'yellow'
zstyle :prompt:pure:prompt:success color 'green'
PURE_PROMPT_SYMBOL='$'
prompt pure

# - fzf
source <(fzf --zsh)

# - src printout
fastfetch
