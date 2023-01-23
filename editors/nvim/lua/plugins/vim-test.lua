-- Ejecución de baterias de tests.
return {
	"vim-test/vim-test",
	keys = {
		{ "<leader>T", "<cmd>TestNearest<cr>" },
		{ "<leader>tf", "<cmd>TestFile<cr>" },
		{ "<leader>ts", "<cmd>TestSuit<cr>" },
		{ "<leader>tl", "<cmd>TestLast<cr>" },
	},
}
