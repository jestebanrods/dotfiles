-- Visualizador de diagnosticos de código.
return {
	"folke/trouble.nvim",
	opts = {
		mode = "document_diagnostics",
	},
	keys = { { "<leader>oo", "<cmd>TroubleToggle<cr>" } },
}
