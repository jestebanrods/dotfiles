-- Bridges Mason & LSPConfig.
return {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = require("core.lsp-servers"),
		automatic_installation = true,
	},
}
