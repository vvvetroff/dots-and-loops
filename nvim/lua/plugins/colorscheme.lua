return {
	'tomasiser/vim-code-dark',
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.codedark_modern = true
		vim.g.codedark_italics = true
		vim.cmd([[colorscheme codedark]])

		-- fixed color clashing between blink.cmp, snacks picker, and general borders
		vim.api.nvim_set_hl(0, "NormalFloat", { fg = "#ffffff", bg = "#1e1e1e" })
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff", bg = "#1e1e1e" })
		vim.api.nvim_set_hl(0, "Pmenu", { fg = "#ffffff", bg = "#1e1e1e" })
		vim.api.nvim_set_hl(0, "@keyword.return", { link = "Keyword" })
	end
	-- "Mofiqul/vscode.nvim",
	-- lazy = true,
	-- priority = 1000,
	-- config = function ()
	-- 	require('vscode').setup()
	-- 	vim.cmd.colorscheme([[vscode]])
	-- end
}
