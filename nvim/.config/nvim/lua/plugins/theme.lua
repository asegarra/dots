return {
  {
    "sainnhe/everforest",
    init = function()
      vim.g.everforest_background = "hard"
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
