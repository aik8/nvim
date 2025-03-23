-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable animations
vim.g.snacks_animate = false

local opt = vim.opt

-- Use tabs instead of spaces.
opt.expandtab = false

-- Number of spaces tabs count for
opt.tabstop = 4
