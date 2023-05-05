-- LSP Loading Progress Display
return {
	"j-hui/fidget.nvim",
	config = true,
	event = { "BufNewFile", "BufRead", "BufAdd" },
}
