-- Replaces Context Menu Vim Inputs.
return {
	"stevearc/dressing.nvim",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	opts = {
		input = {
			enabled = true,
			default_prompt = "Input:",
			title_pos = "left",
			relative = "cursor",
		},
		select = {
			enabled = true,
			backend = { "builtin", "telescope" },
			builtin = {
				relative = "cursor",
				title_pos = "left",
			},
		},
	},
}
