-- Resize Window.
vim.api.nvim_create_autocmd("VimResized", {
	callback = function()
		vim.cmd("tabdo wincmd =")
	end,
})

-- Quick Close Filetypes.
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"qf",
		"help",
		"man",
		"notify",
		"lspinfo",
		"startuptime",
		"httpResult",
		"floaterm",
	},
	callback = function(event)
		vim.bo[event.buf].buflisted = false
		vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
	end,
})

-- Remove Whitespaces.
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		vim.cmd([[%s/\s\+$//e]])
	end,
})

-- Change Filetype To HTML For Better Highlight Syntax.
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	pattern = { "*.tmpl", "*.tpl", "*.gohtml" },
	callback = function()
		vim.api.nvim_command("set filetype=html")
	end,
})
