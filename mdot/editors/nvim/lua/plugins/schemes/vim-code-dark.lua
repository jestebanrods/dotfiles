-- Visual Studio Code Dark Theme.
return {
	"tomasiser/vim-code-dark",
	enabled = false,
	init = function()
		vim.g.codedark_italics = true
		vim.cmd.colorscheme("codedark")
	end,
}
