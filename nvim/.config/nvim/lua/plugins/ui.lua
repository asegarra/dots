return {
  { 
    "sainnhe/gruvbox-material", 
    priority = 1000, 
    config = function()
      vim.o.background = "dark"
      vim.g.gruvbox_material_background = 'medium'
      vim.g.gruvbox_material_better_performance = 1
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    -- Set lualine as statusline
    "nvim-lualine/lualine.nvim",
    -- See `:help lualine.txt`
    opts = {
      options = {
        globalstatus = true,
        icons_enabled = false,
        component_separators = "|",
        section_separators = "",
        theme = "auto",
      },
    },
  },
}
