local function set_render_markdown_higlights(mode)
  local fg_colors = {}
  local bg_color = {}

  if mode == 'light' then 
    fg_colors = {
      '#458588', -- Blue   (H1)
      '#b16286', -- Purple (H2)
      '#689d6a', -- Aqua   (H3)
      '#d65d0e', -- Orange (H4)
      '#d79921', -- Yellow (H5)
      '#98971a', -- Green  (H6)
    }
    bg_color = '#f9f5d7'
  else 
    fg_colors = {
      '#cba6f7', -- Mauve    (H1)
      '#f5c2e7', -- Pink     (H2)
      '#a6e3a1', -- Green    (H3)
      '#f9e2af', -- Yellow   (H4)
      '#94e2d5', -- Teal     (H5)
      '#f2cdcd', -- Flamingo (H6)
    }
    bg_color = '#1e1e2e'
  end 

  -- Set foregrounds
  for i = 1, 6 do
    local hl_group_fg = 'RenderMarkdownH' .. i .. 'Fg'
    vim.api.nvim_set_hl(0, hl_group_fg, { fg = fg_colors[i], bold = true })
  end 

  -- Set background
  for i = 1, 6 do
    local hl_group_fg = 'RenderMarkdownH' .. i .. 'Bg'
    vim.api.nvim_set_hl(0, hl_group_bg, { bg = bg_color })
  end 
end 

return {
  "f-person/auto-dark-mode.nvim",
  lazy = false,
  priority = 1001, -- ensure run after catppuccin
  opts = {
    update_interval = 1000,

    set_dark_mode = function()
      -- vim.o.background = 'dark'
      vim.cmd.colorscheme("catppuccin-mocha")
      require('lualine').setup({
        options = { theme = 'dracula' }
      })
      --set_render_markdown_highlights("dark")
    end,

    set_light_mode = function()
      --vim.o.background = 'light'
      vim.cmd.colorscheme("catppuccin-latte")
      require('lualine').setup({
        options = { theme = "onelight"}
      })
      --set_render_markdown_higlights("light")
    end
  }
}

