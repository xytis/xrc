return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require('toggleterm').setup({
        open_mapping = [[<c-\>]],
        terminal_mappings = true,
      })
    end
  }
}
