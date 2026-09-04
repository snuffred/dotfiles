local opt = vim.opt
opt.encoding = "utf-8"

opt.number = true
opt.relativenumber = true
opt.hlsearch = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.showmode = false

opt.splitright = true
opt.splitbelow = true

vim.cmd("filetype plugin indent on")
