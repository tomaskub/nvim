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
          "jasonls", --json
         -- "solargraph", -- ruby, but this fails, for not commented out
          -- not sure how to add swift here - need to consult xcodebuild.nvim plugin sources
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

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
