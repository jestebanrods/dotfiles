local map_tele = function(key, method, options, buffer, mode)
	mode = mode or "n"
	options = options or {}

	local rhs = function()
		R("alpha.telescope")[method](options)
	end

	local map_options = {
		remap = false,
		silent = true,
	}

	if buffer then
		map_options.buffer = buffer
	end

	vim.keymap.set(mode, key, rhs, map_options)
end

-- Customs
map_tele("<leader>fa", "project_files")
map_tele("<leader>fgb", "branches")
map_tele("<leader>ps", "grep_string")
map_tele("<leader>pw", "grep_word")
map_tele("<leader>fwy", "find_symbol")
map_tele("<leader>rr", "refactor", {}, nil, { "n", "v" })
map_tele("<leader>fr", "file_browser_relative")
map_tele("<leader>fn", "file_browser")
map_tele("<leader>fcc", "search_nvim_files")

-- Natives
map_tele("<leader>fs", "live_grep")
map_tele("<leader>fy", "lsp_document_symbols")
map_tele("<leader>fh", "help_tags")
map_tele("<leader>fb", "buffers")
map_tele("<leader>fq", "current_buffer_fuzzy_find")
map_tele("<leader>fx", "treesitter")
map_tele("<leader>fgs", "git_status")
map_tele("<leader>fc", "command_history")
map_tele("<leader>fd", "diagnostics")
map_tele("<leader>fk", "keymaps")

map_tele("gd", "lsp_definitions")
map_tele("gr", "lsp_references")
map_tele("gi", "lsp_implementations")
map_tele("gtd", "lsp_type_definitions")
