-- Comments Manager.
return {
	"tpope/vim-commentary",
	keys = {
		{
			"gcc",
			desc = "Comment Out Line",
		},
		{
			"gcap",
			desc = "Comment Out A Paragraph",
		},
		{
			"gc",
			desc = "Comment Out The Target Motion",
			mode = {
				"v",
			},
		},
	},
}
