return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    file_types = { "markdown", "Avante" },
    -- You can add other render-markdown options here if needed
    heading = {
      position = 'inline',
      border = false,
      -- Define the names of the highlight groups to use for headings
      foregrounds = {
        'RenderMarkdownH1Fg',
        'RenderMarkdownH2Fg',
        'RenderMarkdownH3Fg',
        'RenderMarkdownH4Fg',
        'RenderMarkdownH5Fg',
        'RenderMarkdownH6Fg',
      },
      backgrounds = {
        'RenderMarkdownH1Bg',
        'RenderMarkdownH2Bg',
        'RenderMarkdownH3Bg',
        'RenderMarkdownH4Bg',
        'RenderMarkdownH5Bg',
        'RenderMarkdownH6Bg',
      },
    },
  },
  ft = { "markdown", "Avante" },

  -- We keep the config function to ensure setup is called,
  -- but the highlight definitions are moved to auto-dark-mode.
  config = function(_, opts)

    require('render-markdown').setup(opts)

  end,
}
