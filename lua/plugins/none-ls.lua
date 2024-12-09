return {
  -- provide formatting tools as input from LSP
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup {
      -- Lua
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.diagnostics.selene,

      -- Ruby
      null_ls.builtins.formatting.rubocop,
      null_ls.builtins.diagnostics.rubocop,
    }
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end
}
