-- LSP Client Quick Configurator
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"j-hui/fidget.nvim", -- Standalone UI For LSP Progress
		"williamboman/mason.nvim", -- Package Manager For LSP Server, Linters And Formaters
		"williamboman/mason-lspconfig.nvim", -- Bridge From Mason And LSP Config
		"whoissethdaniel/mason-tool-installer.nvim", -- Install Or Upgrade All Of Your Third-Party Tools
		"jose-elias-alvarez/null-ls.nvim", -- Inject LSP Diagnostics And Code Actions
	},
	config = function()
		require("alpha.lsp.lsp")
		require("alpha.lsp.mason")
		require("alpha.lsp.null-ls")
	end,
}
