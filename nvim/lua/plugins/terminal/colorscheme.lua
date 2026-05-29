return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		opts = {},
		config = function (opts, _)
			vim.cmd([[colorscheme tokyonight-night]])
		end
	}
}

