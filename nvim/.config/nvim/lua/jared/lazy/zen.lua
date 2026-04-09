return {
  "folke/zen-mode.nvim",
  config = function()  
    vim.keymap.set('n', '<leader>zz', require("zen-mode").toggle, {})
  end
}
