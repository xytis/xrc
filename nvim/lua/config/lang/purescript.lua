require('nvim-treesitter').install({ 'purescript' }):wait(300000)

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*.purs" },
  callback = function()
    vim.lsp.buf.format()
  end,
})
