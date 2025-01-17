return {
  {
    'vim-test/vim-test',
    config = function()

      vim.keymap.set('n', '<leader>tt', '<CMD>TestNearest<CR>', { desc = 'Run test near the cursor' })
      vim.keymap.set('n', '<leader>tT', '<CMD>TestFile<CR>', { desc = 'Run test file (this or last visited)' })
      vim.keymap.set('n', '<leader>tr', '<CMD>TestLast<CR>', { desc = 'Run the last test' })
      vim.keymap.set('n', '<leader>tg', '<CMD>TestVisit<CR>', { desc = 'Visit last test file' })

      vim.g['test#strategy'] = {
        nearest = 'neovim_sticky',
        file = 'asyncrun',
      }

      -- Run tests on test file save
      local testgroup = vim.api.nvim_create_augroup('test', { })
      vim.api.nvim_create_autocmd('BufWrite', {
        pattern = '*',
        callback = function()
          if vim.fn['test#exists']() then
            vim.cmd('TestFile')
          end
        end,
        group = testgroup
      })
    end
  }
}
