return {
  'folke/which-key.nvim',
  keys = {
    {
      '<leader>?',
      function()
        require('which-key').show({ global = false })
      end,
      desc = "Buffer local keymaps (which - key)",
    },
  },
}
