return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "Lazygit",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  keys = {
    { "<leader>lz", "<cmd>LazyGit<cr>", desc = "LazyGit" }
  },
}

