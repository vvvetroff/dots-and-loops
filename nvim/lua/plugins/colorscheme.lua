return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function ()
			require("catppuccin").setup({
					flavour = "latte",
					show_end_of_buffer = true,
					custom_highlights = {
						SpellBad = { fg = "#d20f39", sp = "#d20f39", style = { "undercurl" } }
					}
			})
			vim.cmd([[colorscheme catppuccin-latte]])
		end
	},
}
