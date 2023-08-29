-- Allows Autoclose Html Tags.
return {
	"windwp/nvim-ts-autotag",
	event = { "BufNewFile", "BufRead", "BufAdd" },
	config = true,
}
