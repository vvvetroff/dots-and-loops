local wezterm = require("wezterm")

return {
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 18.0, -- 23/17/16
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = 'Tokyo Night',
	window_close_confirmation = "NeverPrompt",
	harfbuzz_features = { 'calt = 0', 'clig = 0', 'liga = 0' },
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	}
}
