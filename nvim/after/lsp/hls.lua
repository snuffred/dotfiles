-- Merged on top of nvim-lspconfig's lsp/hls.lua. Files under after/ come last
-- in 'runtimepath', so anything set here wins over the defaults.
--
-- The default cmd is { "haskell-language-server-wrapper", "--lsp" }, which resolves the
-- project's GHC and then execs the matching haskell-language-server-<ghc-version>. Both
-- must be on PATH; the wrapper searches PATH only, never its own directory.
return {}
