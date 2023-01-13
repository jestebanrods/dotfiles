local ok, lsplines = pcall(require, "lsp_lines")
if not ok then
	return
end

lsplines.setup()

vim.keymap.set("n", "<leader>qq", function()
	lsplines.toggle()
end)
