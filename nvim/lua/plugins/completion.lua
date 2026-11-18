-- completion
vim.pack.add({
	"https://github.com/saghen/blink.cmp", -- completion engine
	"https://github.com/saghen/blink.lib", -- completion library
	"https://github.com/rafamadriz/friendly-snippets", -- sensible snippets
})

local config = {
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "mono",
	},
	completion = {
		documentation = {
			auto_show = true,
		},
		list = {
			selection = { auto_insert = false, preselect = false },
		},
	},
	keymap = {
		preset = "enter",
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = {
		implementation = "lua",
	},
}

require("blink.cmp").setup(config)
