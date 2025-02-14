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

