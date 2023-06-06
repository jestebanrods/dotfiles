-- Enable Language Server Protocol.
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		vim.diagnostic.config({
			virtual_text = false,
		})

		-- Diagnostics.
		local signs = { Error = "", Warn = "", Hint = "", Info = "" }

		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		local servers = require("plugins.lsp.servers")

		local on_attach = require("plugins.lsp.lsp").on_attach

		require("flutter-tools").setup({
			lsp = {
				on_attach = on_attach,
				capabilities = capabilities,
			},
		})

		-- Config Servers.
		for _, serve in ipairs(servers) do
			lspconfig[serve].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
		end
	end,
}
