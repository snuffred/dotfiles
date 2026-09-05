local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true -- spaces by default; this config's own .lua files are tabs (stylua rewrites them on save)

opt.cursorline = true
opt.termguicolors = true -- not a default: Nvim only auto-enables it when the terminal advertises support
opt.signcolumn = "yes" -- always reserved, so diagnostics never shift the text
opt.showmode = false -- mini.statusline already shows the mode
opt.winborder = "rounded" -- one border for LSP hover/signature, the diagnostic float and the blink menu

opt.splitright = true
opt.splitbelow = true

-- 0.12 defaults leave virtual_text and severity_sort off, so diagnostic text is invisible
-- until you jump to it or open the float. ]d/[d/]D/[D are already defaults; no nav maps needed.
vim.diagnostic.config({
	severity_sort = true,
	virtual_text = { spacing = 2, prefix = "●" },
	float = { source = true },
})
