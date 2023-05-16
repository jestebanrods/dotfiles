-- File Explorer.
local function auto_open_tree(data)
	local real_file = vim.fn.filereadable(data.file) == 1
	local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

	if not real_file and not no_name then
		return
	end

	local opts = {
		focus = false,
		find_file = true,
	}

	require("nvim-tree.api").tree.toggle(opts)
end

local function folder_name(path)
	return vim.fn.fnamemodify(path, ":t")
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{
			"<leader>tt",
			"<cmd>NvimTreeToggle<cr>",
			desc = "NvimTree Toggle",
		},
		{
			"<leader>tb",
			"<cmd>NvimTreeCollapseKeepBuffers<cr>",
			desc = "NvimTree Collapse Keep Buffers",
		},
		{
			"<leader>tc",
			"<cmd>NvimTreeCollapse<cr>",
			desc = "NvimTree Collapse Project",
		},
	},
	opts = {
		hijack_cursor = true,
		sort_by = "type",
		on_attach = "default",
		select_prompts = false,
		view = {
			side = "right",
			width = 40,
			preserve_window_proportions = true,
		},
		actions = {
			open_file = {
				resize_window = false,
			},
		},
		renderer = {
			highlight_git = true,
			highlight_opened_files = "all",
			root_folder_label = folder_name,
			indent_markers = {
				enable = true,
			},
			special_files = {
				"Makefile",
				"README.md",
			},
			symlink_destination = false,
		},
		update_focused_file = {
			enable = true,
		},
		diagnostics = {
			enable = true,
			show_on_dirs = true,
		},
		git = {
			enable = true,
			ignore = false,
			show_on_dirs = true,
			show_on_open_dirs = true,
			timeout = 400,
		},
	},
}
