return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    lazy = true, -- NOTE: explicitly set the lazy to delay the treesitter init a bit.
                 -- If this is not done, there exists a race condition between what NeoVim
                 -- sets in lua and what treesitter expects,
    priority = 1000,
    config = function()
      require'nvim-treesitter.configs'.setup {
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      }

      -- Setup treesitter as fold method
      vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldtext = 'v:lua.vim.treesitter.foldtext()'
      vim.opt.foldmethod = 'expr'
      vim.opt.foldlevel = 16
    end,
  }
}
