--lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup(
    {
        { "folke/neoconf.nvim", cmd = "Neoconf" },
        "folke/neodev.nvim",
        "nvim-lualine/lualine.nvim",
        'akinsho/bufferline.nvim',
        'nvim-tree/nvim-web-devicons',
        "moll/vim-bbye",
        "nvim-treesitter/nvim-treesitter",
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-tree.lua",

        'windwp/nvim-autopairs',


        --LSP
        'neovim/nvim-lspconfig',
        'nvimdev/lspsaga.nvim',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',

        --complete
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',

        -- For vsnip users.
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',


        -- colorscheme with settings
        { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
    })

--plugins-config
require('Pconfig.bufferline')
require('Pconfig.lualine')
require('Pconfig.nvimtree')
require('Pconfig.telescope')
require('Pconfig.treesitter')
require('Pconfig.nvim-cmp')
require('Pconfig.autopairs')