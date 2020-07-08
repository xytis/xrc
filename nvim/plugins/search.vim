call dein#add("vim-scripts/IndexedSearch")
call dein#add("nelstrom/vim-visual-star-search")
" See :help easymotion, triggered as <leader><leader><motion>
call dein#add("Lokaltog/vim-easymotion")
" File finder
call dein#add("junegunn/fzf", { "hook_post_update": "fzf#install()", "merged": 0 })
call dein#add("junegunn/fzf.vim", { "merged": 0 })
