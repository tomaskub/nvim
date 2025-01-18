return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- ensure following lsps are installed
        ensure_installed = {
          "lua_ls",
          "bashls",
          "ruby_lsp",
          "biome",
        }
      })
    end
  },

  {
    -- check nvim lsp config configuration with on attach hook for lsp and keymaps 
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities() -- setup for autocomplete from lsp support
      lspconfig.lua_ls.setup({
        capabilites = capabilities
      })
      lspconfig.bashls.setup({
        capabilites = capabilities
      })
      lspconfig.ruby_lsp.setup({
        capabilites = capabilities,
        filetypes = { "ruby", "rakefile" },
        root_dir = function(fname)
          return lspconfig.util.root_pattern('Gemfile', '.git', 'Fastfile')(fname)
        or lspconfig.util.path.dirname(fname)
        end,
      })
      lspconfig.biome.setup({
        capabilites = capabilities
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
