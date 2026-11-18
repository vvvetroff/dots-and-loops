-- options

-- leader key is <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- enable true color support
vim.opt.termguicolors = true

-- highlight on search, <Esc> on normal to clear highlight
vim.opt.hlsearch = true

-- formatting
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- remove mode indication, as its already in the status line
vim.opt.showmode = false

-- save undo history
vim.opt.undofile = true

-- cursor
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

-- case-insensitive search, unless capital letters are involved
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- indents
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- keep sign column on
vim.opt.signcolumn = "yes"

-- enable mouse
vim.opt.mouse = "a"

-- use OS clipboard
vim.opt.clipboard = "unnamedplus"

-- decrease mapped sequence wait time; which-key pops up sooner
vim.opt.timeoutlen = 300

-- rounded borders for floating windows
vim.opt.winborder = "rounded"

-- diagnostic icons
vim.diagnostic.config({
	virtual_text = false,
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
	},
})