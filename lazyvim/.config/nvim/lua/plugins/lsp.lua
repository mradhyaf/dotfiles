return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      -- disable unwanted keymaps
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "<C-k>", false, mode = "i" }
    end,
  },

  {
    "saghen/blink.cmp",
    opts = {
      -- use opts instead of keys because blink.cmp handles fallback
      keymap = {
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-h>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "scroll_documentation_down", "fallback" },
      },
    },
  },
}
