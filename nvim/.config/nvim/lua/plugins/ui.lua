return {
    -- Useful plugin to show you pending keybinds.
    { 'folke/which-key.nvim', opts = {} },

    {
        'folke/tokyonight.nvim',
        priority = 1000,
        config = function()
           vim.cmd.colorscheme 'tokyonight-moon' 
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
                section_separators = '',
            },
        },
    },
}
