require('nvim-treesitter').install({ 'haskell' }):wait(300000)

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.hs", "*.lhs", "*.cabal" },
  callback = function()
    vim.lsp.buf.format()
  end,
})

local set = vim.opt_local

set.shiftwidth = 2
set.tabstop = 2
set.number = true
