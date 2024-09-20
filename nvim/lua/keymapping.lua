vim.g.mapleader = " "

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

map("i", "jk", "<Esc>", opt)

map("n", "s", "", opt)

map("n", "sv", ":vsp<CR>", opt)
map("n", "sg", ":sp<CR>", opt)

map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

map("n", "sh", "vertical resize -2<CR>", opt)
map("n", "sl", "vertical resize +2<CR>", opt)
map("n", "sj", "resize +2<CR>", opt)
map("n", "sk", "resize -2<CR>", opt)

map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "jk", "<C-\\><C-n>", opt)
map("t", "<C-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<C-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<C-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<C-l>", [[ <C-\><C-N><C-w>l ]], opt)

-- 上下滚动浏览
map("n", "<C-d>", "4j", opt)
map("n", "<C-u>", "4k", opt)

--plugins-keymappings
local PluginKeys = {}

--nvim-tree
map("n", "<C-m>", ":NvimTreeToggle<CR>", opt)

--bufferline
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>w", ":Bdelete!<CR>", opt)

--lspsaga
map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opt)
map("n", "<leader>ft", "<cmd>Lspsaga term_toggle<CR>", opt)
map("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opt)
map("n", "<leader>r", "<cmd>Lspsaga rename<CR>", opt)

--nvim-lspconfig
-- map('n', 'gD', vim.lsp.buf.declaration, opt)
-- map('n', 'gd', vim.lsp.buf.definition, opt)
-- --map('n', 'K', vim.lsp.buf.hover, opt)
-- map('n', 'gi', vim.lsp.buf.implementation, opt)
-- map('n', '<C-k>', vim.lsp.buf.signature_help, opt)
-- map('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opt)
-- map('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opt)
-- map('n', '<space>wl', function()
--   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, opt)
-- map('n', '<space>D', vim.lsp.buf.type_definition, opt)
-- map('n', '<space>rn', vim.lsp.buf.rename, opt)
-- map('n', 'gr', vim.lsp.buf.references, opt)
-- map('n', '<space>e', vim.diagnostic.open_float, opt)
-- map('n', '[d', vim.diagnostic.goto_prev, opt)
-- map('n', ']d', vim.diagnostic.goto_next, opt)
-- map('n', '<space>q', vim.diagnostic.setloclist, opt)

-- conform

--cmp
