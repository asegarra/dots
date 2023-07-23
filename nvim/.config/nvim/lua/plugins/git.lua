return {
    -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    {
        -- Adds git releated signs to the gutter, as well as utilities for managing changes
        'lewis6991/gitsigns.nvim',
        opts = {
            -- See `:help gitsigns.txt`
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            },
        },
    },
    -- Easy access to lazygit
    {
        'kdheepak/lazygit.nvim',
        config = function()
            vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Open lazygit' })
        end
    },

}
