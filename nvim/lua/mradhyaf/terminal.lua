-- Open vertical terminal to the right
vim.api.nvim_create_user_command("Vst",
function()
    vim.cmd("botright vertical terminal")
end,
{})
