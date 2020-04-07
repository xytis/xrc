" Language plugins
call dein#add("dense-analysis/ale")
call dein#add("Shougo/deoplete.nvim", { "do": ":UpdateRemotePlugins" })
call dein#add("sheerun/vim-polyglot")
call dein#add("ludovicchabant/vim-gutentags")

call dein#add("jtratner/vim-flavored-markdown.git")
call dein#add("nathanaelkane/vim-indent-guides")

call dein#add("fatih/vim-go.git", { "do": ":GoInstallBinaries" })

" cargo +ninghtly install racer
" rustup component add rust-src
call dein#add("racer-rust/vim-racer")
