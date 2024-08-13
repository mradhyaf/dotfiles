vim.api.nvim_create_augroup("numbertoggle", { clear = true })

vim.api.nvim_create_autocmd({"BufEnter","FocusGained","InsertLeave","WinEnter"},
{
    group    = "numbertoggle",
    pattern  = "*",
    callback = function() 
        if vim.wo.number and vim.fn.mode() ~= "i" then
            vim.wo.relativenumber = true
        end
    end
})

vim.api.nvim_create_autocmd({"BufLeave","FocusLost","InsertEnter","WinLeave"},
{
    group    = "numbertoggle",
    pattern  = "*",
    callback = function() 
        if vim.wo.number then
            vim.wo.relativenumber = false
        end
    end
})

