-- love2d
vim.pack.add({
	{
		src = "https://github.com/S1M0N38/love2d.nvim",
		version = vim.version.range("3"),
	},
})

local config = {
	path_to_love_bin = "/Applications/love.app/Contents/MacOS/love",
	output = {
		vertical = true,
		split = "right",
	},
}

require("love2d").setup(config)

vim.keymap.set("n", "<leader>vr", "<cmd>Love run<cr>", { desc = "Run LÖVE" })
vim.keymap.set("n", "<leader>vw", "<cmd>Love watch<cr>", { desc = "Watch LÖVE" })
vim.keymap.set("n", "<leader>vi", "<cmd>Love info<cr>", { desc = "Info LÖVE" })
vim.keymap.set("n", "<leader>vs", "<cmd>Love stop<cr>", { desc = "Stop LÖVE" })
vim.keymap.set("n", "<leader>vo", "<cmd>Love output<cr>", { desc = "Output panel" })
