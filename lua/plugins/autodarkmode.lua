return {
  "f-person/auto-dark-mode.nvim",
  lazy = false,
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd.colorscheme("catppuccin-mocha")
      require('lualine').setup({
        options = { theme = 'dracula' }
      })
    end,
    set_light_mode = function()
      vim.cmd.colorscheme("catppuccin-latte")
      require('lualine').setup({
        options = { theme = 'gruvbox_light'}
      })
    end
  }
}

