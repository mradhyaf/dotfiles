-- Optionally configure and load the colorscheme
-- directly inside the plugin declaration.
vim.g.everforest_enable_italic = true
vim.g.everforest_background = "hard" -- 'hard'|'medium'|'soft'
vim.cmd.set "background=dark"
vim.cmd.colorscheme "everforest"

vim.api.nvim_create_user_command("Dark", function()
  vim.cmd "set background=dark"
end, {})

vim.api.nvim_create_user_command("Light", function()
  vim.cmd "set background=light"
end, {})

return {}
