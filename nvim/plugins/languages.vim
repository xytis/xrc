" Language plugins
call dein#add("dense-analysis/ale")
call dein#add("neoclide/coc.nvim", { "branch": "release", "on_ft": ["javascript"] })
call dein#add("Shougo/deoplete.nvim", { "hook_post_update": ":UpdateRemotePlugins" })
call dein#add("sheerun/vim-polyglot")
" call dein#add("ludovicchabant/vim-gutentags")

call dein#add("jtratner/vim-flavored-markdown.git")
call dein#add("nathanaelkane/vim-indent-guides")

call dein#add("fatih/vim-go.git", { "hook_post_update": ":GoInstallBinaries" })

" cargo +ninghtly install racer
" rustup component add rust-src
call dein#add("racer-rust/vim-racer")

call dein#add("mhartington/nvim-typescript", {"build": "./install.sh"})
