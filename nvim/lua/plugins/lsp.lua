return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.keymap.set(
        'n',
        '<leader>cr',
        vim.lsp.buf.rename,
        { noremap = true, silent = true, desc = 'Rename Symbol' }
      )

      vim.lsp.config('hls', {
        settings = {
          haskell = {
            filetypes = { 'haskell', 'lhaskell', 'cabal' },
            formattingProvider = 'fourmolu',
          }
        }
      })

      vim.lsp.config('purescriptls', {
        root_markers = { 'bower.json', 'flake.nix', 'psc-package.json', 'shell.nix', 'spago.dhall', 'spago.yaml', '.git' },
        settings = {
          purescript = {
            formatter = 'purs-tidy',
          },
        },
      })

      vim.lsp.enable({
        'unison',
        'hls',
        'purescriptls',
        'lua_ls',
        'terraformls',
      })
    end
  },
  {
    'lukas-reineke/lsp-format.nvim',
    config = function()
      require('lsp-format').setup {}

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
          require('lsp-format').on_attach(client, args.buf)
        end,
      })
    end
  },
  {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    config = function()
      require('lsp_lines').setup()
      vim.diagnostic.config({
        virtual_text = false,
        virtual_lines = true
      })

      vim.keymap.set(
        'n',
        '<Leader>l',
        require('lsp_lines').toggle,
        { desc = 'Toggle lsp_lines' }
      )
    end,
  },
  {
    'rachartier/tiny-code-action.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope.nvim' },
    },
    event = 'LspAttach',
    opts = {
      backend = 'delta',
      backend_opts = {
        delta = {
          header_lines_to_remove = 4,
          args = {
            '--line-numbers',
          },
        },
      },
      picker = {
        'telescope',
        opts = {
          layout_strategy = 'vertical',
          layout_config = {
            width = 0.7,
            height = 0.9,
            preview_cutoff = 1,
            preview_height = function(_, _, max_lines)
              local h = math.floor(max_lines * 0.5)
              return math.max(h, 10)
            end,
          },
        },
      },
    },
    config = function()
      vim.keymap.set(
        'n',
        '<leader>ca',
        function()
          require('tiny-code-action').code_action({})
        end,
        { noremap = true, silent = true, desc = 'Code Actions' }
      )
    end,
  }
}
