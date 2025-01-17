return {
  {
    'nvim-treesitter/nvim-treesitter',
    tag = 'v0.9.3',
    version = '0.9.3',
    build = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        auto_install = true,
        highlight = {
          enable = true,
          disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
          additional_vim_regex_highlighting = false,
        },
      }

      -- Setup treesitter as fold method
      vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldtext = 'v:lua.vim.treesitter.foldtext()'
      vim.opt.foldmethod = 'expr'
      vim.opt.foldlevel = 16
    end,
  }
}
