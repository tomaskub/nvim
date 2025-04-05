return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets' -- check gh if provides snippets for swift?
    }
  },

  {
    "hrsh7th/nvim-cmp",
    dependecies = {
      "hrsh7th/cmp-nvim-lsp", -- source for lsp?
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      'saadparwaiz1/cmp_luasnip',
      "L3MON4D3/LuaSnip",
    },
    config = function()
      -- Set up nvim-cmp.
      local cmp = require 'cmp'
      local luasnip = require("luasnip")
      --require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },

        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(),
          ["<C-j>"] = cmp.mapping.select_next_item(),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace }),
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end,
            { 'i', 's'}),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        -- sources for autocompletion
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'cmp-nvim-lsp' },
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'path' },
        })
      })
    end
  }
}
--[[
  nvim-cmp - this is the completion engine (only completions) this powers the window
  luasnip - snippet engine
  cmp.luasnit - completion source for cmp

-- this is probably not useful
  friendly snippets - collection for vscode snipped


  cmp-nvim-lsp - completion source that adds lsp sources from connected lsp engine

  ]] --
