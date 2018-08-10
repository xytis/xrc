nnoremap <leader>F :Neoformat<cr>

" let g:neoformat_try_formatprg = 1
" let g:neoformat_only_msg_on_error = 1

let g:neoformat_javascript_stdfmt = {
            \ 'exe': 'standard-format',
            \ 'args': ['--stdin'],
            \ 'stdin': 1
            \ }

let g:neoformat_enabled_javascript = ['stdfmt', 'standard']
let g:neoformat_enabled_yaml = []

augroup terraform
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

augroup javascript
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
