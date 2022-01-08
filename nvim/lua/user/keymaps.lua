local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Modes
--  normal_mode = "n",
--  insert_mode = "i",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  term_mode = "t",
--  command_mode "c",

-- Remap navigation and affected keys for colemak
keymap("", "n", "j", opts)                                                                                                              
keymap("", "N", "J", opts)                                                                                                              
keymap("", "e", "k", opts)                                                                                                              
keymap("", "E", "K", opts)                                                                                     
keymap("", "i", "l", opts)                                                                                     
keymap("", "I", "L", opts)
keymap("", "j", "n", opts)
keymap("", "k", "n", opts)
keymap("", "K", "N", opts)
keymap("", "m", "i", opts)
keymap("", "M", "I", opts)
