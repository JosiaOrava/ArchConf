return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")

    vim.keymap.set('n', '<C-e>', ':Neotree toggle filesystem reveal left<CR>')
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {"c", "lua", "vim", "cmake", "cpp", "html", "javascript", "json", "css", "python"},
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}
