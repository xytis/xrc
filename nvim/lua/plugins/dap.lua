return {
  {
    'mfussenegger/nvim-dap',
    lazy = true,
    keys = {
      {
        '<leader>db',
        function() require('dap').toggle_breakpoint() end,
        desc = 'Toggle Breakpoint'
      },

      {
        '<leader>dc',
        function() require('dap').continue() end,
        desc = 'Continue'
      },

      {
        '<leader>dC',
        function() require('dap').run_to_cursor() end,
        desc = 'Run to Cursor'
      },

      {
        '<leader>dT',
        function() require('dap').terminate() end,
        desc = 'Terminate'
      },
    },
    config = function()
      local dap = require('dap')
      dap.adapters.haskell = {
        type = 'executable',
        command = 'haskell-debug-adapter',
        args = { '--hackage-version=0.0.33.0' },
      }
      dap.configurations.haskell = {
        {
          type = 'haskell',
          request = 'launch',
          name = 'Debug',
          workspace = '${workspaceFolder}',
          startup = "${file}",
          stopOnEntry = true,
          logFile = vim.fn.stdpath('data') .. '/haskell-dap.log',
          logLevel = 'WARNING',
          ghciEnv = vim.empty_dict(),
          ghciPrompt = "λ: ",
          -- Adjust the prompt to the prompt you see when you invoke the stack ghci command below
          ghciInitialPrompt = "λ: ",
          ghciCmd = "stack ghci --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show",
        },
      }
    end,
  },

  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    keys = {
      {
        '<leader>du',
        function() require('dapui').toggle() end,
        desc = 'Dap UI'
      },
    },
    config = function()
      local dapui = require('dapui')
      dapui.setup()
    end,
  }
}
