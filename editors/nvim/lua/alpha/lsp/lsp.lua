local ok, lspconfig = pcall(require, "lspconfig")
if not ok then
	return
end

-- Diagnostics Mappings
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

local format_client = function(client)
	return client.name == "null-ls"
end

local lsp_format = function(bufnr)
	vim.lsp.buf.format({
		async = true,
		bufnr = bufnr,
		filter = format_client,
	})
end

vim.keymap.set("n", "<leader>f", function()
	return vim.lsp.buf.format({
		async = true,
		filter = format_client,
	})
end, {})

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Languages Mappings
	local bufopts = { noremap = true, silent = true, buffer = bufnr }

	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, bufopts)
	vim.keymap.set("n", "<leader>ii", vim.lsp.buf.formatting, bufopts)

	if client.supports_method("textDocument/formatting") then
		vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			buffer = bufnr,
			callback = function()
				lsp_format(bufnr)
			end,
		})
	end
end

local lsp_flags = {
	debounce_text_changes = 150,
}

vim.diagnostic.config({
	virtual_text = false,
})

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

lspconfig.sumneko_lua.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

lspconfig.phpactor.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.intelephense.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.gopls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.html.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.tsserver.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.volar.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.jsonls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.dockerls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

lspconfig.bashls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})
