" Language plugins
call dein#add("dense-analysis/ale")
call dein#add("Shougo/deoplete.nvim", { "hook_post_update": ":UpdateRemotePlugins" })
call dein#add("sheerun/vim-polyglot")
"call dein#add("ludovicchabant/vim-gutentags")

call dein#add("jtratner/vim-flavored-markdown.git")

"Go
call dein#add("fatih/vim-go.git", { "hook_post_update": ":GoInstallBinaries" })

"Rust
" cargo +ninghtly install racer
" rustup component add rust-src
call dein#add("racer-rust/vim-racer")
