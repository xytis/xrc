return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    build = ':TSUpdate',
    lazy = false,
    config = function()
      require 'nvim-treesitter'.setup {}

      -- Setup treesitter as fold method
      vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldtext = 'v:lua.vim.treesitter.foldtext()'
      vim.opt.foldmethod = 'expr'
      vim.opt.foldlevel = 16
    end,
  }
}
