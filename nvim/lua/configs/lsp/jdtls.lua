local lspconfig_defaults = require "configs.lspconfig"

local config = {
  on_attach = lspconfig_defaults.on_attach,
  capabilities = lspconfig_defaults.capabilities,
  on_init = lspconfig_defaults.on_init,
  cmd = { "/home/mradhyaf/.local/share/nvim/mason/bin/jdtls" },
  root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew" }),
}

require("jdtls").start_or_attach(config)
