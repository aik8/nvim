-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Add tmux navigation.
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Window Left" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Window Right" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Window Down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Window Up" })
