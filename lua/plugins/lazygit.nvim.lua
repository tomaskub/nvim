return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "Lazygit",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("lazygit").setup()
  end,

  keys = {
    { "<leader>lz", "<cmd>LazyGit<cr>", desc = "LazyGit" }
  },
}

