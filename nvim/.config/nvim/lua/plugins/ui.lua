return {
  -- Useful plugin to show you pending keybinds.
  { "folke/which-key.nvim", opts = {} },

  {
    "projekt0n/github-nvim-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup({
        specs = {
          github_dark = {
            bg1 = '#232627',
            bg0 = '#232627',
            inactive = '#31363b',
          },
        },
      })
      vim.cmd.colorscheme("github_dark")
    end,
  },

  {
    -- Set lualine as statusline
    "nvim-lualine/lualine.nvim",
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        component_separators = "|",
        section_separators = "",
        theme = "auto",
      },
    },
  },

  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     presets = {
  --       bottom_search = true,
  --       command_palette = true,
  --       long_message_to_split = true,
  --       inc_rename = true,
  --     },
  --   },
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "rcarriga/nvim-notify",
  --   },
  -- },
}
