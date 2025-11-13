return -- lazy.nvim
{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
		presets = {
			lsp_doc_border = true,
			-- command_palette = true, -- position the cmdline and popupmenu together
		},
		routes = {
			{
				filter = { event = "" },
				opts = { skip = true },
			},
		},
	},
  dependencies = { "MunifTanjim/nui.nvim", },
	config = function (_, opts)
		require("noice").setup(opts)
	end
}
