local map = vim.keymap.set
local cmd = vim.cmd

-- [Cursor Movement]
map("n", "<A-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<A-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<A-k>", "<C-w>k", { desc = "switch window up" })
map("n", "<A-l>", "<C-w>l", { desc = "switch window right" })

map("n", "J", "<C-d>", { desc = "scroll down" })
map("n", "K", "<C-u>", { desc = "scroll up" })

map("i", "<A-h>", "<Left>", { desc = "left" })
map("i", "<A-j>", "<Down>", { desc = "down" })
map("i", "<A-k>", "<Up>", { desc = "up" })
map("i", "<A-l>", "<Right>", { desc = "right" })

map("i", "<A-H>", "<Home>", { desc = "home" })
map("i", "<A-L>", "<End>", { desc = "end" })

map("i", "<C-c>", "<Esc>", { desc = "escape" })
map("t", "<A-c>", "<C-\\><C-n>", { desc = "exit terminal mode" })

-- [Windows and Buffers]
map("n", "<C-x>", "<cmd>q<CR>", { desc = "close window" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "write current file" })

-- [Editing]
map("n", "<leader>/", "gcc", { remap = true, desc = "toggle comment" })
map("v", "<leader>/", "gc", { remap = true, desc = "toggle comment" })

map("n", "<F3>", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "format file" })
map("n", "<Esc>", cmd.noh, { desc = "general clear highlights" })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "shift line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "shift line up" })

-- [nvim-tree]
map("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- [Telescope]
map("n", "<leader>t", "<cmd>Telescope<CR>", { desc = "Telescope" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { desc = "Telescope find keymaps" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope find files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope help tags" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "Telescope current buffer" })
