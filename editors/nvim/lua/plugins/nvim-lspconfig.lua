-- Enable Language Server Protocol.
return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local on_attach = function(_, bufnr)
			vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
			local opts = { buffer = bufnr, noremap = true, silent = true }

			-- Diagnostics Mappings.
			vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
			vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

			-- Buffer Local Mappings.
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "<space>f", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
		end

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
		local servers = require("core.lsp-servers")

		-- TODO: Improves LSP Attachs To External Files.
		require("flutter-tools").setup({
			lsp = {
				on_attach = on_attach,
				capabilities = capabilities,
			}
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
