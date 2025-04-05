return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set(
        'n',
        '<leader>ff',
        builtin.find_files,
        { desc = "Fuzzy find file in cwd" }
      )
      vim.keymap.set(
        'n',
        '<leader>fg',
        builtin.live_grep,
        { desc = "Live grep in cwd" }
      )
    end
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",
    -- This is your opts table
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }
      -- this does not work 
      require("telescope").load_extension("ui-select")
    end
  }
}
