return {
	"akinsho/flutter-tools.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim",
	},
	ft = { "dart" },
	opts = {
		debugger = {
			enabled = true,
			run_via_dap = false,
		},
	},
}
