-- Theme Darcula IntelliJ.
return {
	"briones-gabriel/darcula-solid.nvim",
	enabled = false,
	dependencies = {
		"rktjmp/lush.nvim",
	},
	init = function()
		vim.cmd.colorscheme("darcula-solid")
	end,
}
