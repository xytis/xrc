" Language plugins
call dein#add("dense-analysis/ale")
call dein#add("Shougo/deoplete.nvim", { "hook_post_update": ":UpdateRemotePlugins" })
call dein#add("sheerun/vim-polyglot")
"call dein#add("ludovicchabant/vim-gutentags")

call dein#add("jtratner/vim-flavored-markdown.git")
call dein#add("nathanaelkane/vim-indent-guides")

"Go
call dein#add("fatih/vim-go.git", { "hook_post_update": ":GoInstallBinaries" })

"Rust
" cargo +ninghtly install racer
" rustup component add rust-src
call dein#add("racer-rust/vim-racer")

"Javascript
call dein#add("neoclide/coc.nvim", { "branch": "release", "on_ft": ["javascript"] })

"Typescript
call dein#add("mhartington/nvim-typescript", {"build": "./install.sh"})

"PHP
call dein#add("phpactor/phpactor", { "branch": "master", "on_ft": ["php"], "build": "composer install --no-dev -o" })
call dein#add("kristijanhusak/deoplete-phpactor")
call dein#add("elythyr/phpactor-mappings")
