-- Load order matters:
--   mapleader must be set before any <leader> mapping is defined;
--   core.lazy bootstraps lazy.nvim and imports every spec under lua/plugins/.
vim.g.mapleader = " "

require("core.options")
require("core.keymaps")
require("core.lazy")
