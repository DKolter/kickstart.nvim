-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'max397574/better-escape.nvim',
    config = function()
      require('better_escape').setup()
    end,
  },
  {
    'echasnovski/mini.move',
    opts = {
      mappings = {
        left = 'H',
        right = 'L',
        down = 'J',
        up = 'K',
      },
    },
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  {
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
      local crates = require 'crates'
      crates.setup {
        popup = {
          autofocus = true,
        },
      }
      vim.keymap.set('n', '<leader>cf', crates.show_features_popup, { desc = 'Show rust crates features' })
      vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, { desc = 'Show rust crates versions' })
    end,
  },
  'github/copilot.vim',
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup()
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
    end,
  },
}
