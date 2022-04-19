vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.list = true -- Display control chars
vim.opt.listchars = {
    tab = '→ ',
    nbsp = '␣',
    trail = '•',
    precedes = '«',
    extends = '»'
}
vim.opt.wrap = false -- Keep lines unwrapped

vim.opt.foldmethod = 'syntax'
vim.opt.foldnestmax = 6
