local filename = {
	'filename',
	path = 4,
	padding = { left = 1, right = 1 },
	symbols = { modified = '●', readonly = '󰏯' }
}

local branch = {
	'branch',
	icon = ''
}

local diagnostics = {
	'diagnostics',
	sections = { "error", "warn" },
	symbols = { error = " ", warn = " " },
	always_visible = true,
}

local location = {
	'location',
	padding = { left = 0, right = 1 }
}

return {
  "nvim-lualine/lualine.nvim",
	event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons", event = "VeryLazy" },
  opts = {
    options = {
      theme = "auto",
      section_separators = "",
      component_separators = "",
    },
    sections = {
      lualine_a = { filename },
      lualine_b = { branch },
      lualine_c = { diagnostics },
      lualine_x = { location },
      lualine_y = { '' },
      lualine_z = { '' }
    }
  }
}
