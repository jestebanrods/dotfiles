local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

-- local php_actions = require("php-code-actions")

local formatting = null_ls.builtins.formatting

local sources = {
	null_ls.builtins.code_actions.gitsigns,
	formatting.stylua,
	-- -- null_ls.builtins.diagnostics.eslint,
	null_ls.builtins.diagnostics.phpstan,
	formatting.phpcsfixer,
	-- -- null_ls.builtins.formatting.pint,
	-- null_ls.builtins.diagnostics.golangci_lint,
	-- -- null_ls.builtins.formatting.goimports,
	-- null_ls.builtins.formatting.jq,
	-- null_ls.builtins.code_actions.gitrebase,
	-- null_ls.builtins.code_actions.refactoring,
	-- null_ls.builtins.formatting.blade_formatter,
	-- null_ls.builtins.formatting.sql_formatter,
	-- php_actions.getter_setter,
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
