# upon start up
if status is-interactive
	set fish_greeting && fastfetch
end

# - pure prompt
set --universal pure_symbol_prompt '$'
set --universal pure_check_for_new_release false
set pure_color_prompt_on_success green
set pure_color_git_branch cyan

# - paths
fish_add_path ~/.config/scripts/
fish_add_path ~/.local/share/flutter/bin
fish_add_path /usr/local/opt/ruby/bin

# - variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx MANPAGER nvim +Man!

# - aliases & abbrs
abbr --add v nvim
abbr --add vi nvim
abbr --add vim nvim
abbr --add python3 python3.14
abbr --add love /Applications/love.app/Contents/MacOS/love
abbr --add l ls -C -t -U -p --color=auto
abbr --add la ls -C -t -U -A -p --color=auto
abbr --add src source ~/.config/fish/config.fish
abbr --add smux source ~/.config/tmux/tmux.conf
abbr --add gs git status
abbr --add gcm git commit -m
abbr --add gpom git push origin main
abbr --add lg lazygit
abbr --add ff fastfetch
abbr --add c clear
abbr --add cl clear
abbr --add jrnl " jrnl"
abbr --add diary " jrnl diary"
abbr --add domp "docker compose"

# - sourcing
fzf --fish | source

# - functions
function mkcd --description "Create a directory and then cd into it"
    mkdir $argv[1]
    cd $argv[1]
end

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd

# vscode
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
