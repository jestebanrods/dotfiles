-- Marks Visualizer.
return {
	"chentoast/marks.nvim",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	opts = {
		excluded_filetypes = {
			"NvimTree",
		},
		force_write_shada = true,
		bookmark_0 = {
			sign = "⚑",
			virt_text = "Mark 0",
		},
	},
}
