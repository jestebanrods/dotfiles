-- Themes.
return {
	"edeneast/nightfox.nvim",
	opts = {
		options = {
			styles = {
				comments = "italic",
				keywords = "bold",
				types = "italic,bold",
			},
		},
		groups = {
			all = {
				CmpItemAbbr = { fg = "fg0" },
				CmpItemAbbrDeprecated = { link = "Error" },
				CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbr" },
				CmpItemKind = { link = "Special" },
			},
		},
	},
	init = function()
		vim.cmd.colorscheme("nordfox")
	end,
}
