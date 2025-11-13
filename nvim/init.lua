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
map("n", "+", "<C-a>",																							{ desc = "Increment Number", silent = true })
map("n", "_", "<C-x>",																							{ desc = "Decrement Number", silent = true  })
map("n", "<Tab>", ">>",																							{ desc = "Indent Forward", silent = true  })
map("n", "<S-Tab>", "<<",																						{ desc = "Indent Backward", silent = true  })
map("v", "<Tab>", ">gv",																						{ desc = "Indent Forward", silent = true  })
map("v", "<S-Tab>", "<gv",																					{ desc = "Indent Backward", silent = true  })
map("v", "K", ":m '>-2<CR>gv=gv",																		{ desc = "Move Selected Code Down", silent = true  })
map("v", "J", ":m '>+1<CR>gv=gv",																		{ desc = "Move Selected Code Up", silent = true  })
map("n", "<leader>q", ":bd<CR>", 																		{ desc = "Quit Buffer", silent = true  })
map("n", "<leader>Q", ":q<CR>", 																		{ desc = "Force Quit Buffer", silent = true  })
map("n", "<leader>cd", function() vim.diagnostic.open_float() end, 	{ desc = "View diagnostic", silent = true  })
map("n", "<leader>L", ":Lazy<CR>", 																	{ desc = "Open Lazy", silent = true  })
map({ "n", "v" }, "<leader>s", "1z=", 														  { desc = "Correct Spelling", silent = true  })
map("n", "<leader>w", ":w<CR>", 																		{ desc = "Quit Buffer", silent = true  })
map("n", "<leader>ndd", ":!rm '%:p'<CR>:bd<CR>", { silent = true })
map("n", "<leader>nn", function ()
	local filename = vim.fn.input("New note: "):gsub(' ', '-')
	local year = vim.fn.system('date +"%Y-%m-%d"'):gsub('\n','')
	if filename ~= "" then
		vim.cmd(string.format([[vnew ~/Documents/notebook/inbox/%s_%s.md]], year, filename))
	end
end)


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

for _, path in ipairs(vim.api.nvim_get_runtime_file("snippets/*.lua", true)) do
	loadfile(path)()
end
