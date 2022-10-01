local ok, refactoring = pcall(require, "refactoring")
if not ok then
	return
end

refactoring.setup({})

require("telescope").load_extension("refactoring")

vim.api.nvim_set_keymap(
	"v",
	"<leader>rr",
	"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
	{ noremap = true }
)
