require('mason-tool-installer').setup {
    ensure_installed = {
        -- LSP

        "lua_ls",
        "rust_analyzer",
        "ltex",
        "typst_lsp",
        "clangd",
        "pyright",


        -- DAP

        -- Linter

        'ast_grep',


        -- formatter

        'stylua',
        'clang_format',
        'latexindent',
        'markdownlint',     -- also included linter
        'beautysh',
        'nixpkgs-fmt',
        'prettier',

    },

    auto_update = false,

    run_on_start = true,

    integrations = {
        ['mason-lspconfig'] = true,
        ['mason-null-ls'] = true,
        ['mason-nvim-dap'] = true,
    },
}
