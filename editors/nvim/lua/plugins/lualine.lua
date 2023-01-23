-- Bottom Status Bar.
return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"kyazdani42/nvim-web-devicons", -- Agrega pack de iconos.
	},
	opts = {
		sections = {
			lualine_c = {
				{
					"filename",
					file_status = true,
					path = 1,
				},
			},
		},
	},
}
