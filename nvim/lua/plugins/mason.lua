return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  { 
    'williamboman/mason-lspconfig.nvim',
    dependencies = {
      'williamboman/mason.nvim',
    },
    config = function()
      require("mason-lspconfig").setup()
      -- Automatic setup
      require("mason-lspconfig").setup_handlers {
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end
      }
    end
  }

}
