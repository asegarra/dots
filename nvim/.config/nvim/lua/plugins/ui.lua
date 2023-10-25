return {
    -- Useful plugin to show you pending keybinds.
    { 'folke/which-key.nvim', opts = {} },

    -- {
    --     'folke/tokyonight.nvim',
    --     priority = 1000,
    --     config = function()
    --        vim.cmd.colorscheme 'tokyonight-moon' 
    --     end,
    -- },

    {
        'shaunsingh/nord.nvim',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'nord'
        end,
    },

    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'auto',
            },
        },
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            presets = {
                bottom_search = true,
                command_palette = true,
                long_message_to_split = true,
                inc_rename = true,
            }
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }
}
