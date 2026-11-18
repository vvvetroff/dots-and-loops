-- surround and autopairs
vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.nvim", version = "stable" },
})

local move_config = {
	mappings = {
		left = "H",
		right = "L",
		down = "J",
		up = "K",
	},
}

require("mini.ai").setup({})
require("mini.pairs").setup({})
require("mini.surround").setup({})
require("mini.move").setup(move_config)
