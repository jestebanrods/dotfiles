-- Configurador rápido de LSP.
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"j-hui/fidget.nvim", -- Visualizador de progreso de carga del LSP.
		"williamboman/mason.nvim", -- Manejador de paquetes para servidores LSP, linters y formaters.
		"williamboman/mason-lspconfig.nvim", -- Extensión para la autoinstalación de servers.
		"whoissethdaniel/mason-tool-installer.nvim", -- Instalador de herramientas adicionales.
		"jose-elias-alvarez/null-ls.nvim", -- Complemento para el analisis, diagnostico, acciones y formateo de código.
	},
	config = function()
		require("alpha.lsp.lsp")
		require("alpha.lsp.mason")
		require("alpha.lsp.null-ls")
	end,
}
