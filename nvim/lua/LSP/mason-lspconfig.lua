require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "ltex",
        "typst-lsp",
    },
    automatic_installation = true,
}
