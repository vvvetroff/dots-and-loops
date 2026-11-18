-- code formatters; formats on save
vim.pack.add({
	"https://github.com/stevearc/conform.nvim",
})

local config = {
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	notify_on_error = true,
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
		lua = { "stylua" },
		python = { "black" },
	},
}

require("conform").setup(config)
