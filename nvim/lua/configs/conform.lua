return {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang-format" },

    -- Prettier
    javascript = { "prettier" },
    typescript = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },

  notify_no_formatters = true,
}
