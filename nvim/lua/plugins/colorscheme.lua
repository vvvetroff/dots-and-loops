return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function ()
	-- 		require("catppuccin").setup({
	-- 				flavour = "latte",
	-- 				show_end_of_buffer = true,
	-- 				custom_highlights = {
	-- 					SpellBad = { fg = "#d20f39", sp = "#d20f39", style = { "undercurl" } }
	-- 				}
	-- 		})
	-- 		vim.cmd([[colorscheme catppuccin-latte]])
	-- 	end
	-- },
	-- {
	-- 	"mellow-theme/mellow.nvim",
	-- 	name = "mellow",
	-- 	priority = 1000,
	-- 	config = function ()
	-- 		vim.cmd([[colorscheme mellow]])
	-- 	end
	-- }
	-- {
	-- 	"rakr/vim-one",
	-- 	priority = 1000,
	-- 	name = "one",
	-- 	config = function ()
	-- 		vim.cmd([[colorscheme one]])
	-- 		vim.cmd([[set background=dark]])
	-- 	end
	-- }
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		opts = {},
		config = function (opts, _)
			vim.cmd([[colorscheme tokyonight-night]])
		end
	}
	-- {
	-- 	'tomasiser/vim-code-dark',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.codedark_modern = true
	-- 		vim.g.codedark_italics = true
	-- 		vim.cmd([[colorscheme codedark]])
	-- 		-- fixed color clashing between blink.cmp, snacks picker, and general borders
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#ffffff", bg = "#1e1e1e" })
	-- 		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "#1e1e1e" })
	-- 		vim.api.nvim_set_hl(0, "Pmenu", { fg = "#ffffff", bg = "#1e1e1e" })
	-- 		vim.api.nvim_set_hl(0, "@keyword.return", { link = "Keyword" })
	-- 	end
	-- },
	-- {
	-- 	'Mofiqul/vscode.nvim',
	-- 	priority = 1000,
	-- 	config = function ()
	-- 		vim.cmd([[colorscheme vscode]])
	-- 	end
	-- }
}

