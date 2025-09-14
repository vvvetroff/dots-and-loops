-- set options/globals
vim.g.mapleader = " "
vim.opt.winborder = "rounded"
vim.opt.hlsearch = true
vim.opt.tabstop = 2
vim.opt.cursorcolumn = false
vim.opt.ignorecase = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.signcolumn = "yes"
vim.opt.mouse = ""
vim.opt.clipboard:append("unnamedplus")
vim.opt.cursorline = true
vim.g.python_highlight_all = 1
-- set keymaps
local map = vim.keymap.set
map("n", "+", "<C-a>",																							{ desc = "Increment Number" })
map("n", "_", "<C-x>",																							{ desc = "Decrement Number" })
map("n", "<Tab>", ">>",																							{ desc = "Indent Forward" })
map("n", "<S-Tab>", "<<",																						{ desc = "Indent Backward" })
map("v", "<Tab>", ">gv",																						{ desc = "Indent Forward" })
map("v", "<S-Tab>", "<gv",																					{ desc = "Indent Backward" })
map("v", "K", ":m '>-2<CR>gv=gv",																		{ desc = "Move Selected Code Down" })
map("v", "J", ":m '>+1<CR>gv=gv",																		{ desc = "Move Selected Code Up" })
map("n", "<leader>q", ":q<CR>", 																		{ desc = "Quit" })
map("n", "<leader>cd", function() vim.diagnostic.open_float() end, 	{ desc = "View diagnostic" })
map("n", "<leader>L", ":Lazy<CR>", 																	{ desc = "Open Lazy" })
map({ "n", "v" }, "<leader>s", "1z=", 															  { desc = "Correct Spelling" })

-- load lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	spec = { import = "plugins" },
	ui = { backdrop = 100, border = "rounded" },
	change_detection = { enabled = false },
})
