return {
  "stevearc/oil.nvim",
  -- this fixed oil not opening properly
  event = { "VimEnter */*,.*", "BufNew */*,.*" },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true
    }
  },
  keys = {
    { "<leader>e", function() require("oil").open() end, { silent = false } }
  }
}
