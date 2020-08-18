let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('omni_patterns', {
\ 'go': '[^. *\t]\.\w*',
\})

" Ensure that no preview window is created
set completeopt=menuone
