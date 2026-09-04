-- Load order matters:
--   mapleader must be set before any <leader> mapping is defined;
--   core.pack (vim.pack.add) must run before any require("plugins.*").
vim.g.mapleader = " "

require("core.options")
require("core.pack")
require("core.keymaps")

require("plugins.catppuccin")
require("plugins.mini")
require("plugins.snacks")
require("plugins.lsp")
require("plugins.blink")
require("plugins.conform")
require("plugins.lint")
require("plugins.trouble")
require("plugins.tiny_code_action")
