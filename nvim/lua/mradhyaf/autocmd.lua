local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Auto switch to absolute line numbers on insert mode
augroup("numbertoggle", { clear = true })

autocmd({"BufEnter","FocusGained","InsertLeave","WinEnter"},
{
    group    = "numbertoggle",
    pattern  = "*",
    callback = function() 
        if vim.wo.number and vim.fn.mode() ~= "i" then
            vim.wo.relativenumber = true
        end
    end
})

autocmd({"BufLeave","FocusLost","InsertEnter","WinLeave"},
{
    group    = "numbertoggle",
    pattern  = "*",
    callback = function() 
        if vim.wo.number then
            vim.wo.relativenumber = false
        end
    end
})

augroup("terminsert", { clear = true })
autocmd({"TermOpen"}, {
    group    = "terminsert",
    callback = function ()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.cmd("startinsert")
    end
})

