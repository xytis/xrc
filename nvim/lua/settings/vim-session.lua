-- ================ Turn Off Swap Files ==============
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.wb = false

-- ================ Persistent Undo ==================
-- Keep undo history across sessions, by storing in file.
-- Only works all the time.
vim.api.nvim_exec([[
if has('persistent_undo')
  if !isdirectory(expand('~').'/.vim/backups')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
  endif
  set undodir=~/.vim/backups
  set undofile
endif
]], false)

-- ================ Session Storage ==================

vim.g.session_directory = '~/.vim/sessions'
vim.g.session_autosave = 'no'
vim.g.session_autoload = 'no'
