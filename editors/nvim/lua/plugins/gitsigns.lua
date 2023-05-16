-- Adds Git Meta Information Decorators.
return {
	"lewis6991/gitsigns.nvim",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	keys = {
		{
			"<leader>gcb",
			"<cmd>Gitsigns toggle_current_line_blame<cr>",
			desc = "Git Toggle Current Line Blame",
		},
	},
	config = true,
}
