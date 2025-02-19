local opt = vim.opt
local o = vim.o
local g = vim.g

-------------------------------------- options ------------------------------------------
o.showmode = false

o.clipboard = "unnamedplus"
o.cursorline = true
o.cursorlineopt = "number"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

-- Numbers
o.number = true
o.numberwidth = 2
o.ruler = false

-- -- disable nvim intro
opt.shortmess:append("sI")

o.signcolumn = "yes"
o.colorcolumn = "80,120"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
opt.backup = false
o.undofile = true
opt.undodir = os.getenv("HOME") .. "/.local/state/nvim/undodir"

o.scroll = 8
opt.scrolloff = 8
o.pumheight = 10

-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")

-- disable some default providers
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- add binaries installed by package managers (bun and mason) to path
local delim = vim.fn.has("win32") ~= 0 and ";" or ":"
vim.env.PATH = vim.fs.joinpath(vim.fn.getenv("HOME"), ".bun", "bin")
  .. delim
  .. vim.fs.joinpath(vim.fn.stdpath("data"), "mason", "bin")
  .. delim
  .. vim.env.PATH
