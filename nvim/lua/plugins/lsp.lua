return {
  "neovim/nvim-lspconfig",
  dependencies = {
		{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", opts = { highlight = { enabled = true } } },
    { "mason-org/mason.nvim", version = "^1.0.0", opts = { ui = { backdrop = 100, border = "rounded" } } },
    { "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
    { "saghen/blink.cmp", opts = { snippets = { preset = "luasnip" }, completion = { ghost_text = { enabled = false } } } },
  },
  config = function()
		-- luasnip
		local ls = require('luasnip')
    ls.setup({ enable_autosnippets = true })

		-- lsp and autocompletions
    vim.lsp.enable({"lua_ls", "basedpyright", "clangd", "tinymist"})
    local capabilities = vim.tbl_deep_extend(
      'force',
      vim.lsp.protocol.make_client_capabilities(),
      require("blink.cmp").get_lsp_capabilities()
    )
    vim.lsp.config("*", {capabilities = capabilities})
    -- cool icons for diagnostic info, stolen from somewhere idk
		local s = vim.diagnostic.severity
    vim.diagnostic.config({
			-- virtual_text = false,
      severity_sort = true,
      underline = { severity = s.ERROR },
      signs = {
        text = {
          [s.ERROR] = '󰅚 ', [s.WARN] = '󰀪 ', [s.INFO] = '󰋽 ', [s.HINT] = '󰌶 ',
        },
      },
    })
  end
}
