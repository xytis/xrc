vim.api.nvim_exec([[
map <C-t><up> :tabrewind<cr>
map <C-t><down> :tablast<cr>
map <C-t><left> :tabprevious<cr>
map <C-t><right> :tabnext<cr>
]], false)
