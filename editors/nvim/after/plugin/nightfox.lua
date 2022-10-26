local ok, nightfox = pcall(require, "nightfox")
if not ok then
	return
end

nightfox.setup({
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
})

vim.cmd("colorscheme nordfox")
