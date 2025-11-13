return {
  "folke/snacks.nvim",
  lazy = false,
  opts = {
    picker = {
      enabled = true,
      layout = {
        reverse = false,
        preset = "telescope",
        cycle = false,
      },
    },
		indent = { enabled = true },
		notifier = { enabled = true },
  },
  keys = {
    { "<leader>ff", function() require("snacks").picker.files() end, desc="Find Files in cwd" },
    { "<leader>fc", function() require("snacks").picker.files({ cwd = '~/.config/nvim' }) end, desc="Find Config Files" },
    { '<leader>f"', function() require("snacks").picker.registers() end, desc="Pick from Registers" },
    { "<leader>fh", function() require("snacks").picker.help() end, desc="Search in Help Pages" },
    { '<leader>fm', function() require("snacks").picker.man() end, desc="Search in Man Pages" },
    { '<leader>fk', function() require("snacks").picker.keymaps() end, desc="Search from Keymaps" },
		{ "<leader>fn", function() require("snacks").picker.files({ cwd = '~/Documents/notebook/' }) end, desc="Find Notes" },
		{ "<leader>zf", function() require("snacks").picker.grep() end, desc="Grep Word" },
		{ "<leader>zn", function() require("snacks").picker.grep({ cwd = '~/Documents/notebook/' }) end, desc="Grep Notes" },
  }
}
