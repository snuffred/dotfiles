require('lspconfig').ltex.setup {
	settings = {
		ltex = {
			language = "en-GB",
			enabled = { "bibtex", "gitcommit", "org", "markdwon", "tex", "restructuredtext", "rsweave", "latex", "quarto", "rmd", "context", "html", "xhtml", "mail", "plaintext" }
		},
	},
}
