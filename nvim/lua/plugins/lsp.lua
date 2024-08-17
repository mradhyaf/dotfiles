return {
    {
        'williamboman/mason.nvim',
        config = true
    },

    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = {
            'mason.nvim',
        },
        opts = {
            ensure_installed = { 'clangd', 'gopls' },
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        },
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})
            end)
        end,
    },

    {'neovim/nvim-lspconfig'},

    {'hrsh7th/cmp-nvim-lsp'},

    {'hrsh7th/nvim-cmp'},

    {'L3MON4D3/LuaSnip'},
}

