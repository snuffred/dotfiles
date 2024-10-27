local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.hlsearch = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.showmode = false

opt.splitbelow = true
opt.splitright = true

vim.cmd("filetype plugin indent on")
