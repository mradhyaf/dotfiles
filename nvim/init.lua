vim.g.mapleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup {
  defaults = {
    lazy = false,
  },
  spec = { { import = "plugins" } },

  ui = {
    icons = {
      ft = "",
      lazy = "󰂠 ",
      loaded = "",
      not_loaded = "",
    },
  },
  install = { colorscheme = { "everforest" } },
  rocks = { enabled = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "2html_plugin",
        "tohtml",
        "getscript",
        "getscriptPlugin",
        "gzip",
        "logipat",
        -- "netrw",
        -- "netrwPlugin",
        -- "netrwSettings",
        -- "netrwFileHandlers",
        "matchit",
        "tar",
        "tarPlugin",
        "rrhelper",
        "spellfile_plugin",
        "vimball",
        "vimballPlugin",
        "zip",
        "zipPlugin",
        "tutor",
        "rplugin",
        "syntax",
        "synmenu",
        "optwin",
        "compiler",
        "bugreport",
        "ftplugin",
      },
    },
  },
}

-- local settings
local err = "Unable to load configs: "
local all_ok = true

local configs = {
  "options",
  "autocmds",
  "mappings",
}

for _, conf in ipairs(configs) do
  local ok, _ = pcall(require, conf)
  if not ok then
    err = err .. "\n\t- " .. conf
    all_ok = false
  end
end

if not all_ok then
  print(err)
end
