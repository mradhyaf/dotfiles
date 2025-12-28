-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Shift-scrolling
map("", "J", "<C-d>", { desc = "Scroll down" })
map("", "K", "<C-u>", { desc = "Scroll up" })

-- Insert-mode keymaps
map("i", "<C-h>", "<Left>", { desc = "Left" })
map("i", "<C-j>", "<Down>", { desc = "Down" })
map("i", "<C-k>", "<Up>", { desc = "Up" })
map("i", "<C-l>", "<Right>", { desc = "Right" })
map("i", "<C-S-H>", "<Home>", { desc = "Home" })
map("i", "<C-S-L>", "<End>", { desc = "End" })
map("i", "<C-c>", "<Esc>", { desc = "Escape" })
