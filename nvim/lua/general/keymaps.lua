-- keymaps
local map = vim.keymap.set

map("n", "+", "<C-a>", { desc = "Increment Number", silent = true })
map("n", "_", "<C-x>", { desc = "Decrement Number", silent = true })
map("v", "<Tab>", ">gv", { desc = "Indent Forward", silent = true })
map("v", "<S-Tab>", "<gv", { desc = "Indent Backward", silent = true })
map("n", "<leader>q", ":bd<CR>", { desc = "[Q]uit Buffer", silent = true })
map("n", "<leader>Q", ":q<CR>", { desc = "[Q]uit Neovim", silent = true })
map({ "n", "v" }, "<leader>s", "1z=", { desc = "Correct [S]pelling", silent = true })
map("n", "<leader>w", ":w<CR>", { desc = "[W]rite Buffer", silent = true })
