-- Reload File
vim.keymap.set("n", "<leader><leader>f", "<cmd>source %<CR>")

-- Disable/Enable Diagnostic Text
vim.keymap.set("n", "<leader>dd", function()
	vim.diagnostic.config({
		virtual_text = not vim.diagnostic.config().virtual_text,
	})
end)
