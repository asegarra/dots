-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Better command line mode
vim.keymap.set( "n" , ",", ":")
vim.keymap.set( "n" , ":", ",")

-- Easier escape
vim.keymap.set("i", "jk", "<Esc>", { desc = "Escape" })
vim.keymap.set("i", "kj", "<Esc>", { desc = "Escape" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Page down and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Page up and center cursor" })
