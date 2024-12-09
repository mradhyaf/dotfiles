vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Center cursor vertically after pgUp and pgDn
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Comment lines
-- "remap=true" is required (not sure why)
vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("v", "<C-/>", "gc", { remap = true })

-- Jump to a subject
vim.keymap.set("n", "<C-Return>", "<C-]>")

-- tmux <Ctrl> prefix is limited, might need extended keys support
-- duplicate dysfunctional keys with <Alt> prefix
vim.keymap.set("n", "<A-/>", "gcc", { remap = true })
vim.keymap.set("v", "<A-/>", "gc", { remap = true })
