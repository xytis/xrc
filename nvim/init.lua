-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

vim.cmd.colorscheme "catppuccin-macchiato"

local set = vim.opt

set.shiftwidth = 2
set.tabstop = 2
set.expandtab = true
set.number = true
set.clipboard = "unnamedplus"
set.mouse = "a"

set.listchars = {
  tab = "▏ ⃯",
  leadmultispace = "▏ ",
  trail = "￮",
  extends = "▶",
  precedes = "◀",
  nbsp = "‿",
}
set.list = true

-- Make the :sbuffer jump between open buffers, preffering open windows
-- vim.o.switchbuf = 'uselast,useopen'
-- Get to the open terminal
-- vim.keymap.set('n', '<C-t>', ':sbuffer term<CR>i', { silent = true, })
-- Get out of terminal
-- vim.keymap.set('t', '<C-t>', '<C-\\><C-n> :sbuffer#<CR>', { silent = true, })
