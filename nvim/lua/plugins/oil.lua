-- netrw replacement; file explorer
vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

local config = {
	default_file_explorer = true,
	view_options = {
		show_hidden = true,
	},
}

require("oil").setup(config)

vim.keymap.set("n", "<leader>e", function()
	require("oil").open()
end, { silent = false, desc = "[E]xplore files" })
