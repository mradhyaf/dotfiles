local opt = vim.opt

opt.number = true
opt.numberwidth = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.scrolloff = 10
opt.colorcolumn = "80"

opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.local/state/nvim/undodir"
opt.undofile = true

opt.updatetime = 50

opt.wrap = false
-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"
