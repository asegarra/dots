return {
    -- Useful plugin to show you pending keybinds.
    { 'folke/which-key.nvim', opts = {} },

    {
        'navarasu/onedark.nvim',
        priority = 1000,
        config = function()
           vim.cmd.colorscheme 'onedark' 
        end,
    },

    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'onedark',
                section_separators = '',
            },
        },
    },
}
