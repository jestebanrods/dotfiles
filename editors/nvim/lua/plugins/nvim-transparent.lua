-- Enables IDE Terminal Transparency
return {
	"xiyaowong/nvim-transparent",
	opts = {
		enable = false,
		extra_groups = {
			"BufferLineTabClose",
			"BufferlineBufferSelected",
			"BufferLineFill",
			"BufferLineBackground",
			"BufferLineSeparator",
			"BufferLineIndicatorSelected",
		},
	},
    cmd = "TransparentEnable"
}
