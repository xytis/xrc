vim.g.loaded_python_provider = 0
-- Use brew location of python3 to circumvent direnv and localized pythons
-- complaining about missing neovim package
vim.g.python3_host_prog = "/usr/local/bin/python3"
