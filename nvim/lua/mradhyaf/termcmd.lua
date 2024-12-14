-- Custom vim terminal commands (i.e. :cmd)

local ucmd = vim.api.nvim_create_user_command

-- Open vertical terminal to the right
ucmd("Vst",
function()
    vim.cmd("botright vertical terminal")
end,
{})

ucmd("Term",
function()
    local buf = vim.api.nvim_create_buf(false, false)
    local w = vim.api.nvim_open_win(buf, true, {
        split = 'right',
        win = vim.api.nvim_get_current_win()
    })
    vim.wo.relativenumber = false
    vim.wo.number = false
    vim.fn.termopen(vim.o.shell)
end,
{})
