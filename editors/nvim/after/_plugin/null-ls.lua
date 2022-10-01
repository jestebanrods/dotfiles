local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

local codeActions = null_ls.builtins.code_actions
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting

local sources = {
	codeActions.gitsigns,
	diagnostics.golangci_lint,
	diagnostics.phpstan,
	diagnostics.staticcheck,
	-- diagnostics.yamllint,
	formatting.gofmt,
	formatting.goimports,
	formatting.jq,
	formatting.phpcsfixer,
	formatting.stylua,
	formatting.yamlfmt,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	sources = sources,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
