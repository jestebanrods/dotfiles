local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
	return
end

treesitter.setup({
	ensure_installed = "all",
	sync_install = false,
	auto_install = true,
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
	refactor = {
		highlight_definitions = { enable = true },
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "trr",
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
