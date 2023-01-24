-- Añade integración con git.
return {
	"tpope/vim-fugitive",
	keys = {
		{ "<leader>ga", ":Git fetch -ap<cr>" },
		{ "<leader>gl", ":Git pull<cr>" },
		{ "<leader>gdh", ":diffget //2<cr>" },
		{ "<leader>gdl", ":diffget //3<cr>" },
	},
	cmd = { "G", "Git" },
}
