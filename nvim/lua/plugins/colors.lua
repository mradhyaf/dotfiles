return {
    {
        'sainnhe/everforest',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.everforest_enable_italic = true
            vim.g.everforest_background = 'hard' -- 'hard'|'medium'|'soft'
            vim.cmd.set('background=dark')
            vim.cmd.colorscheme('everforest')
            
            vim.api.nvim_create_user_command("Dark",
            function()
                vim.cmd("set background=dark")
            end,
            {})

            vim.api.nvim_create_user_command("Light",
            function()
                vim.cmd("set background=light")
            end,
            {})
        end
    }
    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     lazy = false,
    --     priority = 1000,
    --     -- opts = {
    --     --     variant = "dawn",
    --     --     dark_variant = "moon",
    --     -- },
    --     config = function()
    --         vim.cmd([[colorscheme rose-pine-dawn]])
    --     end,
    -- }
}

