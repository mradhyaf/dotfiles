local map = vim.keymap.set
local cmd = vim.cmd

-- [Movement]
-- Window/Buffer movement
map("n", "<A-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<A-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<A-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<A-k>", "<C-w>k", { desc = "switch window up" })
map("n", "<A-o>", "<C-w>o", { desc = "current window only" })
map("n", "<A-q>", "<C-w>q", { desc = "close window" })

map("n", "<A-b>", "<cmd>bnext<CR>", { desc = "next buffer" })
map("n", "<A-B>", "<cmd>bNext<CR>", { desc = "prev buffer" })
map("i", "<A-l>", "<Right>")

-- [Remap default behaviors]
-- Center cursor vertically after pgUp and pgDn
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")
map("i", "<C-c>", "<Esc>", { desc = "escape" })

map("n", "<leader>pv", cmd.Ex, { desc = "open file browser" })
map("t", "<A-c>", "<C-\\><C-n>", { desc = "exit terminal mode" })

-- [Editing]
map("n", "<leader>/", "gcc", { remap = true, desc = "toggle comment" })
map("v", "<leader>/", "gc", { remap = true, desc = "toggle comment" })

map("n", "<F3>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format file" })
map({ "n", "i", "v" }, "<C-s>", cmd.w, { desc = "write current file" })
map("n", "<Esc>", cmd.noh, { desc = "general clear highlights" })

map("i", "<C-CR>", "<Esc>o", { desc = "begin new line below current line" })
map("i", "<C-S-CR>", "<Esc>O", { desc = "begin new line below current line" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "shift line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift line up" })

-- Telescope
map("n", "<leader>t", "<cmd>Telescope<CR>", { desc = "Telescope" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Telescope find keymaps" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope find files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope help tags" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope current buffer" })
