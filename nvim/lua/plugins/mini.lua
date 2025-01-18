return {
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      require('mini.ai').setup({})

      -- Comments add 'gc' text object
      require('mini.comment').setup({})

      -- Enables matching pair insert (->() [->[] ...
      -- require('mini.pairs').setup({})

      require('mini.bracketed').setup({})

      require('mini.surround').setup({})
    end
  }
}
