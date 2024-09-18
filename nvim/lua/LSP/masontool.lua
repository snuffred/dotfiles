require('mason-tool-installer').setup {
    ensure_installed = {
        -- LSP 
        {
            "lua_ls",
            "rust_analyzer",
            "ltex",
            "typst_lsp",
            "clangd",
            "pyright",
        },

        -- DAP

        -- Linter

        -- formatter
        -- {

        -- },
    },

    auto_update = false,

    run_on_start = true,

    integrations = {
        ['mason-lspconfig'] = true,
        ['mason-null-ls'] = true,
        ['mason-nvim-dap'] = true,
    },
}
