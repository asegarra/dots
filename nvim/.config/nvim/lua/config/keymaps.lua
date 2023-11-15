-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- QoL keymaps
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Escape nvim' })
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'Escape nvim' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page down and center cursor' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page up and center cursor' })
vim.keymap.set('n', '<leader>n', '<cmd>Ex<cr>', { desc = 'Load netrw' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Delete current buffer' })
vim.keymap.set('n', '<leader>p', ':pc<cr>', { silent = true, desc = 'Close preview window' })

-- vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move left window' })
-- vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move down window' })
-- vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move up window' })
-- vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move right window' })

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
