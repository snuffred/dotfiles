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
        "nvim-treesitter/nvim-treesitter-context",

        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-fzf-native.nvim",

        "nvim-tree/nvim-tree.lua",

        'windwp/nvim-autopairs',

        'lewis6991/gitsigns.nvim',

        -- LSP
        'neovim/nvim-lspconfig',
        'nvimdev/lspsaga.nvim',

        -- Mason
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        'jay-babu/mason-null-ls.nvim',
        'jay-babu/mason-nvim-dap.nvim',

        -- null-ls
        'nvimtools/none-ls.nvim',
        'nvimtools/none-ls-extras.nvim',

        -- complete
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',

        -- For vsnip users.
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',


        -- colorscheme with settings
        { "catppuccin/nvim",    name = "catppuccin" }
    })

--plugins-config
require('Pconfig.bufferline')
require('Pconfig.lualine')
require('Pconfig.nvimtree')
require('Pconfig.telescope')
require('Pconfig.treesitter')
require('Pconfig.nvim-cmp')
require('Pconfig.autopairs')
