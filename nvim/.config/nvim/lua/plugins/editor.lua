return {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        opts = {},
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
