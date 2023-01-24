-- Viewer Changes Differences
return {
	"sindrets/diffview.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Lua Add-On For Plugin Development
	},
	keys = {
		{ "<leader><leader>dvo", "<cmd>DiffviewOpen<cr>", desc = "DiffviewOpen" },
		{ "<leader><leader>dvc", "<cmd>DiffviewClose<cr>", desc = "DiffviewClose" },
	},
	config = true,
}
