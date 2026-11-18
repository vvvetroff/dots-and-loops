-- entrypoint

require("general.options")
require("general.keymaps")
require("plugins.mini")

if not vim.g.vscode then
	require("plugins.lsp")
	require("plugins.formatters")
	require("plugins.completion")
	require("plugins.colorscheme")
	require("plugins.markdown")
	require("plugins.oil")
	require("plugins.picker")
	require("plugins.statusline")
	require("plugins.todo")
	require("plugins.treesitter")
	require("plugins.vimtmuxnav")
	require("plugins.whichkey")
	require("plugins.love")
	require("plugins.latex")
end
