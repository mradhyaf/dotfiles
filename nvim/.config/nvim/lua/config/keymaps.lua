-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local cmd = vim.cmd

-- Map Ctrl+C to Esc because quirks
map("v", "<C-c>", "<Esc>", { desc = "escape" })

-- [Editing]
map("n", "<C-/>", "gcc", { remap = true, desc = "toggle comment" })
map("v", "<C-/>", "gc", { remap = true, desc = "toggle comment" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "shift line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift line up" })

-- [Windows and Buffers]
map("n", "<C-x>", "<leader>bd", { desc = "close current window" })
