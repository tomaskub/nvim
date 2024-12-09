return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim'
  },
  config = function()
    require("neo-tree").setup({
      window = {
        mappings = {
          ["l"] = {'open', desc = 'open directory' },
          ['h'] = {'close_node', desc =  'close directory' },
          ['Z'] = {'close_all_nodes', desc = 'close all directories'},
          ['z'] = {'expand_all_nodes', desc = 'close all directories'},
        }
      }
    })

    vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', {})
  end
}
