return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").load()
    end,
  },
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "onedark",
  },
}
