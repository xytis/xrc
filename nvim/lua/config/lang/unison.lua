require('nvim-treesitter').install({ 'unison' }):wait(300000)

vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = "*",
})

-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   pattern = { "*.u" },
--   callback = function()
--     vim.lsp.buf.format()
--   end,
-- })
