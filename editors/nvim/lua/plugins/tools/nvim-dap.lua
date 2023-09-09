return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"theHamsta/nvim-dap-virtual-text",
		"rcarriga/nvim-dap-ui",
		"leoluz/nvim-dap-go",
		"mxsdev/nvim-dap-vscode-js",
		"anuvyklack/hydra.nvim",
	},
	keys = {
		{
			"<leader>d",
			desc = "Open Debug Menu",
		},
	},
	config = function()
		require("plugins.configs.dap")
	end,
}
