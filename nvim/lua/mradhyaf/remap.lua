local g = vim.g
local map = vim.keymap.set
local cmd = vim.cmd

g.mapleader = " "
g.maplocalleader = "\\"

-- [Movement]
-- Window/Buffer movement
map("n", "<A-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<A-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<A-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<A-k>", "<C-w>k", { desc = "switch window up" })

-- Center cursor vertically after pgUp and pgDn
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")

-- Movement in insert mode
map("i", "<C-S-H>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-S-L>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-CR>", "<C-]>", { desc = "jump to tag" })

map("n", "<leader>pv", cmd.Ex, { desc = "open file browser" })

map("i", "<C-h>", "<Esc>", { desc = "escape" })
map("t", "<A-c>", "<C-\\><C-N>", { desc = "exit terminal mode" })


-- [Editing]
map("n", "<C-/>", "gcc", { remap = true }, { desc = "toggle comment" })
map("v", "<C-/>", "gc", { remap = true }, { desc = "toggle comment" })
-- Alternative for situations when the above maps does not work (e.g. in tmux)
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

map({ "n", "i", "v" }, "<C-s>", cmd.w, { desc = "write current file" })
map("n", "<Esc>", cmd.noh, { desc = "general clear highlights" })

map("i", "<C-CR>", "<Esc>o", { desc = "begin new line below current line" })
map("i", "<C-S-CR>", "<Esc>O", { desc = "begin new line below current line" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "shift line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift line up" })
