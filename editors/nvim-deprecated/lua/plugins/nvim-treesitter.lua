-- Builds A Concrete Syntax Tree For Source Files
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects", -- Add-On Selection Texts For Programming
		"nvim-treesitter/nvim-treesitter-refactor", -- Add-On For Renaming And Highlighting Variable Occurrences
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		treesitter.setup({
			ensure_installed = {
				"php",
				"phpdoc",
				"vim",
				"go",
				"gomod",
				"css",
				"html",
				"javascript",
				"lua",
				"typescript",
				"yaml",
				"query",
                "sql",
			},
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
				disable = {},
			},
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					scope_incremental = "grc",
					node_incremental = "grn",
					node_decremental = "grm",
				},
			},
			matchup = {
				enable = true,
				include_match_words = true,
			},
			refactor = {
				highlight_definitions = {
					enable = true,
				},
				smart_rename = {
					enable = true,
					keymaps = {
						smart_rename = "trr",
					},
				},
				navigation = {
					enable = true,
					keymaps = {
						goto_definition = "gnd",
						list_definitions = "gnD",
						list_definitions_toc = "gO",
						goto_next_usage = "<a-*>", -- Ctrl+a+*
						goto_previous_usage = "<a-#>", -- Ctrl+a+#
					},
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@conditional.outer",
						["ic"] = "@conditional.inner",
						["al"] = "@loop.outer",
						["il"] = "@loop.inner",
					},
				},
			},
		})
	end,
}
