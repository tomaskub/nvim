-- Setup filetype detection

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "Fastfile", "*fastlane/Fastfile" },
  callback = function()
  vim.bo.filetype = "ruby"
  end,
})
