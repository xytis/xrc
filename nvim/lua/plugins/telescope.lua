return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = 'ivy'
          }
        },
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>ff', function()
        builtin.find_files({
          cwd = require('oil').get_current_dir()
        })
      end, { desc = 'Find files in the current directory' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find among files' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find help' })

      vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'Find references' })
      vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'Find definitions' })
    end
  }
}
