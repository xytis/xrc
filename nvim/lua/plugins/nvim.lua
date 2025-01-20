return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
    -- disable when a .luarc.json file is found
    enabled = function()
      local root_dir = vim.uv.cwd()
      return not vim.uv.fs_stat(root_dir .. "/.luarc.json")
    end,
  },
}
