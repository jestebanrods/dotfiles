-- Allows Autoclose Pairs From Multiple Characters.
return {
	"windwp/nvim-autopairs",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	opts = {
		disable_filetype = { "NvimTree" },
	}
}
