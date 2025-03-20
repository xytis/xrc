return {
  {
    'neovim/nvim-lspconfig',
    config = function()
    end
  },
  'lukas-reineke/lsp-format.nvim',
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
      vim.diagnostic.config({
        virtual_text = false,
        virtual_lines = true
      })
    end,
  }
}
