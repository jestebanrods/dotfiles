-- Http Client.
return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		result_split_horizontal = true,
		result = {
			show_url = true,
			show_curl_command = false,
			show_http_info = true,
			show_headers = true,
		},
	},
	ft = "http",
	keys = {
		{ "<leader><leader>rn", "<Plug>RestNvim",     desc = "RestNvim" },
		{ "<leader><leader>rl", "<Plug>RestNvimLast", desc = "RestNvimLast" },
	},
}
