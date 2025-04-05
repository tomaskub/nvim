vim.wo.relativenumber = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Copy/Paste from system clipboard
vim.keymap.set('n', '<leader>Y', '"+Y', {})
vim.keymap.set('n', '<leader>P', '"+P', {})

-- Move pane split line
vim.keymap.set('n', '<leader><Up>', ':resize -5<CR>', {silent = true})
vim.keymap.set('n', '<leader><Down>', ':resize +5<CR>', {silent = true})
vim.keymap.set('n', '<leader><Left>', ':vertical resize -5<CR>', {silent = true})
vim.keymap.set('n', '<leader><Right>', ':vertical resize +5<CR>', {silent = true})
