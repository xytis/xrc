vim.api.nvim_exec([[
" Use Esc as if you were in vim
tnoremap <Esc> <C-\><C-n>
" Send Esc to terminal using "Verbatim-escape"
tnoremap <C-v><Esc> <Esc>
]], false)
