-- Visor de cambios y comparación entre commits.
return {
	"sindrets/diffview.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{ "<leader><leader>dvo", "<cmd>DiffviewOpen<cr>", desc = "DiffviewOpen" },
		{ "<leader><leader>dvc", "<cmd>DiffviewClose<cr>", desc = "DiffviewClose" },
	},
	config = true,
}
