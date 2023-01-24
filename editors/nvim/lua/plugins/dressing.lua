-- Replaces Context Menu Vim Inputs.
return {
	"stevearc/dressing.nvim",
	config = true,
	event = { "BufNewFile", "BufRead", "BufAdd" },
}
