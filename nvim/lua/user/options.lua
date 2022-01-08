-- :help options
-- Options sorted alphabetically
local options = {
  clipboard = "unnamedplus",
  cursorline = true,
  expandtab = true,
  hlsearch = true,
  ignorecase = true,
  number = true,
  numberwidth = 4,
  shiftwidth = 2,
  signcolumn = "yes",
  smartcase = true,
  splitbelow = true,
  splitright = true,
  tabstop = 2,
  wrap = false,
}

for k, v in pairs(options) do 
  vim.opt[k] = v
end
