return {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        opts = {
            indent = {
                char = "|",
                tab_char = "|",
            },
            scope = { enabled = false },
        },
    },
    {
        "echasnovski/mini.indentscope",
        opts = {
            symbol = "|",
            options = { try_as_border = true },
        }
    },
    -- seamless tmux navigation
    'christoomey/vim-tmux-navigator',

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    -- Surround plugin
    {
        'tpope/vim-surround',
    },

    {
        'tpope/vim-unimpaired',
    }
}
