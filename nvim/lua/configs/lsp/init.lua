local make_opts = require("configs.lsp.defaults")
local lspconfig = require("lspconfig")

-- :help lspconfig-all for pre-configed lsps

lspconfig.lua_ls.setup(make_opts({
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
          vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
          "${3rd}/luv/library",
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}))

lspconfig.clangd.setup(make_opts({}))

-- vscode-langserver-extracted
lspconfig.eslint.setup(make_opts({}))
lspconfig.html.setup(make_opts({}))
lspconfig.jsonls.setup(make_opts({}))
lspconfig.cssls.setup(make_opts({}))

lspconfig.ts_ls.setup(make_opts({}))
