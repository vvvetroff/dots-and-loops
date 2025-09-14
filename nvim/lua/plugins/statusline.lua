return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", event = "VeryLazy" },
  opts = {
    options = {
      theme = "auto",
      section_separators = "",
      component_separators = "",
    },
    sections = {
      lualine_a = {
        { 'filename', path = 1, padding = { left = 1, right = 1 }, symbols = { modified = '●' } }
			},
      lualine_b = { '' },
      lualine_c = { '' },
      lualine_x = { { 'location', padding = { left = 0, right = 1 } }, },
      lualine_y = { '' },
      lualine_z = { '' }
    }
  }
}
