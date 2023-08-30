-- Bridges Mason & LSPConfig.
return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = require("plugins.configs.lsp"),
		automatic_installation = true,
	},
}
