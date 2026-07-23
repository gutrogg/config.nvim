local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.clipboard = "unnamedplus"

opt.mouse = "a"

opt.undofile = true

opt.splitbelow = true
opt.splitright = true

opt.updatetime = 250
opt.timeoutlen = 300

opt.list = true
opt.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}

opt.colorcolumn = "120"
opt.completeopt = { "menu", "menuone", "noselect" }
