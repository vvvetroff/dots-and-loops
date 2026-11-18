# - greeting
function fish_greeting
  fastfetch
end

# - paths
fish_add_path ~/.config/scripts/
fish_add_path /opt/homebrew/opt/ruby/bin

# - variables
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx MANPAGER 'nvim +Man!'

# - pure prompt
set pure_symbol_prompt '$'
set pure_check_for_new_release false
set pure_color_prompt_on_success green
set pure_color_git_branch cyan
set pure_color_git_dirty yellow
set pure_color_git_stash yellow

# - aliases & abbrs
abbr --add v nvim
abbr --add vi nvim
abbr --add vim nvim
abbr --add love /Applications/love.app/Contents/MacOS/love
abbr --add l ls -t -U --color=auto
abbr --add la ls -t -U -A --color=auto
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
if status is-interactive
	fzf --fish | source
end

