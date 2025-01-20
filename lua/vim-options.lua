vim.wo.relativenumber = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Copy/Paste from system clipboard
vim.keymap.set('n', '<leader>Y', '"+Y', {})
vim.keymap.set('n', '<leader>P', '"+P', {})
