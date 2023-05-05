-- Enables IDE Terminal Transparency
return {
	"xiyaowong/nvim-transparent",
	opts = {
		enable = true,
		extra_groups = {
			"BufferLineTabClose",
			"BufferlineBufferSelected",
			"BufferLineFill",
			"BufferLineBackground",
			"BufferLineSeparator",
			"BufferLineIndicatorSelected",
		},
	},
	cmd = "TransparentEnable",
}
