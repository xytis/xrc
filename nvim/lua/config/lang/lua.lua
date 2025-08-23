require('nvim-treesitter').install({ 'lua' }):wait(300000)

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.lua" },
  callback = function()
    vim.lsp.buf.format()
  end,
})

local set = vim.opt_local
set.shiftwidth = 2
set.expandtab = true
set.number = true
