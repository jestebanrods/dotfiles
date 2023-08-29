return {
	"sindrets/diffview.nvim",
	config = true,
	keys = {
		{
			"<leader>dvo",
			"<cmd>DiffviewOpen<cr>",
			desc = "Open Git Diff View",
		},
		{
			"<leader>dvc",
			"<cmd>DiffviewClose<cr>",
			desc = "Close Git Diff View",
		},
		{
			"<leader>dvr",
			"<cmd>DiffviewRefresh<cr>",
			desc = "Refresh Git Diff View",
		},
	},
}
