-- treesitter; formatting and syntax highlighting
vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		version = "main",
	},
})

require("nvim-treesitter.install").update("all")

local languages = {
	"lua",
	"regex",
	"python",
	"html",
	"latex",
	"yaml",
}

require("nvim-treesitter").install(languages)
