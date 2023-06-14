return {
  {
    "sainnhe/everforest",
    init = function()
      vim.g.everforest_background = "soft"
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
