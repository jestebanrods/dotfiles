-- Bottom Status Bar.
local function split(str, character)
	local result = {}
	local index = 0

	for s in string.gmatch(str, "[^" .. character .. "]+") do
		result[index] = s
		index = index + 1
	end

	return result
end

local function folder_name()
	local path = vim.fn.getcwd()
	local explode = split(path, "/")

	return string.upper(explode[#explode])
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			disabled_filetypes = {
				winbar = {
					"NvimTree",
				},
				inactive_winbar = {
					"NvimTree",
				},
			},
			globalstatus = true,
			refresh = {
				statusline = 500,
				winbar = 500,
			},
		},
		sections = {
			lualine_c = {
				{
					"filename",
					symbols = {
						unnamed = "",
						newfile = "",
					},
					file_status = false,
					path = 1,
				},
			},
		},
	},
}
