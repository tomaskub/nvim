return {
  "nvim-treesitter/nvim-treesitter",
  event = { 'BufReadPre', 'BufNewFile' },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup(
      {
        incremental_selection = { enable = false },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = false },
        ensure_installed = {
          'json',
          'yaml',
          'markdown',
          'markdown_inline',
          'lua',
          'gitignore',
          'swift',
        },
      }
    )
  end
}
