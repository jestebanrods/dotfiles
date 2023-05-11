-- Adds Indentation Guides To All Lines.
return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	opts  = {
		show_current_context = false,
		show_current_context_start = false,
		char_list = { "¦" },
		context_char_list = { "¦" },
	}
}
