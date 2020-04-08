let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'go': ['gofmt'],
\   'javascript': ['prettier'],
\   'php': ['php_cs_fixer'],
\   'python': ['black'],
\   'rust': ['rustfmt'],
\   'terraform': ['terraform'],
\   'typescript': ['prettier', 'tslint'],
\}

let g:ale_php_cs_fixer_options = '--rules=@Symfony'

let g:ale_fix_on_save = 1
