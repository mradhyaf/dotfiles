return {
    {
        'sainnhe/everforest',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.everforest_enable_italic = true
            vim.g.everforest_background = 'hard'
            vim.cmd.set('background=light')
            vim.cmd.colorscheme('everforest')
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

