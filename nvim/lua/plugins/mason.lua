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
      --  This part makes that after lsp is available, it auto connects
      require("mason-lspconfig").setup_handlers {
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
              on_attach = function(client, bufnr)
                -- We bind lsp-format for all servers
                require("lsp-format").on_attach(client, bufnr)
              end,
            }
        end
      }
    end
  }

}
