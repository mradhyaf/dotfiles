local JDTLS_PATH = "/home/mradhyaf/.local/share/nvim/mason/packages/jdtls"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = "/home/mradhyaf/Projects/" .. project_name
local lspconfig_defaults = require "configs.lspconfig"

local config = {
  on_attach = lspconfig_defaults.on_attach,
  capabilities = lspconfig_defaults.capabilities,
  on_init = lspconfig_defaults.on_init,

  cmd = {

    -- 💀
    "java", -- or '/path/to/java21_or_newer/bin/java'
    -- depends on if `java` is in your $PATH env variable and if it points to the right version.

    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xmx1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens",
    "java.base/java.util=ALL-UNNAMED",
    "--add-opens",
    "java.base/java.lang=ALL-UNNAMED",

    -- 💀
    "-jar",
    JDTLS_PATH .. "/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar",
    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
    -- Must point to the                                                     Change this to
    -- eclipse.jdt.ls installation                                           the actual version

    -- 💀
    "-configuration",
    JDTLS_PATH .. "/config_linux",
    -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
    -- Must point to the                      Change to one of `linux`, `win` or `mac`
    -- eclipse.jdt.ls installation            Depending on your system.

    -- 💀
    -- See `data directory configuration` section in the README
    "-data",
    workspace_dir,
  },

  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}

require("jdtls").start_or_attach(config)
