local map = vim.keymap.set
local cmd = vim.cmd

-- [Cursor Movement]
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })

map("n", "J", "<C-d>", { desc = "scroll down" })
map("n", "K", "<C-u>", { desc = "scroll up" })

map("i", "<C-h>", "<Left>", { desc = "left" })
map("i", "<C-j>", "<Down>", { desc = "down" })
map("i", "<C-k>", "<Up>", { desc = "up" })
map("i", "<C-l>", "<Right>", { desc = "right" })

map("i", "<C-H>", "<Home>", { desc = "home" })
map("i", "<C-L>", "<End>", { desc = "end" })

map("i", "<C-c>", "<Esc>", { desc = "escape" })
map("t", "<A-c>", "<C-\\><C-n>", { desc = "exit terminal mode" })

-- [Windows and Buffers]
map("n", "<C-x>", "<cmd>q<CR>", { desc = "close current window" })
map("n", "<C-S-X>", "<cmd>qa<CR>", { desc = "close all windows" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "write current file" })

-- [Editing]
map("n", "<C-/>", "gcc", { remap = true, desc = "toggle comment" })
map("v", "<C-/>", "gc", { remap = true, desc = "toggle comment" })

map("n", "<F3>", function()
  require("conform").format({ lsp_fallback = true })
end, { desc = "format file" })
map("n", "<Esc>", cmd.noh, { desc = "general clear highlights" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "shift line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift line up" })

-- [nvim-tree]
map("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- [Harpoon]
local harpoon = require("harpoon")
map("n", "<A-Tab>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
map("n", "<A-a>", function()
  harpoon:list():add()
end)

-- [Telescope]
map("n", "<leader>t", "<cmd>Telescope<CR>", { desc = "Telescope" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Telescope find keymaps" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope find files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope help tags" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope current buffer" })
