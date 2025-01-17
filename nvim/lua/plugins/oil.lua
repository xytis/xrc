return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  config = function()
    require('oil').setup({
      default_file_explorer = true,
      delete_to_trash = false,
      view_options = {
        show_hidden = true,
      },
      git = {
        -- Return true to automatically git add/mv/rm files
        add = function(path)
          return true
        end,
        mv = function(src_path, dest_path)
          return true
        end,
        rm = function(path)
          return true
        end,
      },
    })

    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
  end
}
