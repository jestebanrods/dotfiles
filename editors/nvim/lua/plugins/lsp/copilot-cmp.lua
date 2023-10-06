return {
	"zbirenbaum/copilot-cmp",
	dependencies = {
		"zbirenbaum/copilot.lua",
		cmd = { "Copilot" },
		event = { "BufNewFile", "BufRead", "BufAdd" },
		opts = {
			suggestion = {
				enabled = false,
			},
			panel = {
				enabled = false,
			},
		},
	},
	config = true,
}
