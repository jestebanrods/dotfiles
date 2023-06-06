-- Bridges Mason & LSPConfig.
return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = require("plugins.lsp.servers"),
		automatic_installation = true,
	},
}
