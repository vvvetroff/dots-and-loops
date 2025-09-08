# - terminal config
DISABLE_AUTO_TITLE="true"

# - zsh
if [[ -d "$HOME/.config/oh-my-zsh/" ]]; then
	export ZSH="$HOME/.config/oh-my-zsh/"
	plugins=(git zsh-autosuggestions)
	source $ZSH/oh-my-zsh.sh
fi

# - zsh plugins
[[ -f "$HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] && source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ -f "$HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] && source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# - aliases
alias v=nvim 
alias vi=nvim 
alias vim=nvim
alias python3=python3.12
alias love="/Applications/love.app/Contents/MacOS/love"
alias l="eza -la"
alias av="source bin/activate"
alias dv="deactivate"
alias pfc="find . -type f ! -name '.*' | wc -l"
alias source-zsh="source ~/.config/zsh/.zshrc"

# - paths
export PATH="/usr/local/Cellar/python@3.12/3.12.7/bin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
export PYTHONPATH=$PYTHONPATH:/usr/local/Cellar/python@3.12/3.12.7/bin
export PATH

# - eval
eval "$(fzf --zsh)"
eval "$(starship init zsh)"
