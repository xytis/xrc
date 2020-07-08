let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'go': ['gofmt'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'php': ['php_cs_fixer'],
\   'python': ['black'],
\   'rust': ['rustfmt'],
\   'terraform': ['terraform'],
\   'typescript': ['prettier', 'tslint'],
\}

let g:ale_fix_on_save = 1
