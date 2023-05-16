-- Fuzzy Finder.
return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function()
		local telescope = require("telescope")
		local telescope_config = require("telescope.config")
		local actions = require("telescope.actions")
		local action_layout = require("telescope.actions.layout")
		local fb_actions = require("telescope").extensions.file_browser.actions
		local vimgrep_arguments = { unpack(telescope_config.values.vimgrep_arguments) }

		table.insert(vimgrep_arguments, "--hidden")
		table.insert(vimgrep_arguments, "--glob")
		table.insert(vimgrep_arguments, "!**/.git/*")

		telescope.setup({
			defaults = {
				vimgrep_arguments = vimgrep_arguments,
				prompt_prefix = "❯ ",
				selection_caret = "❯ ",
				preview = {
					hide_on_startup = true,
				},
				theme = "ivy",
				mappings = {
					i = {
						["<C-p>"] = action_layout.toggle_preview,
					},
					n = {
						["<C-p"] = action_layout.toggle_preview,
					},
				},
			},
			pickers = {
				find_files = {
					find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
					theme = "dropdown",
				},
				git_files = {
					theme = "dropdown",
				},
				oldfiles = {
					theme = "dropdown",
				},
				git_branches = {
					mappings = {
						i = {
							["<C-j>"] = actions.git_create_branch,
						},
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
				file_browser = {
					theme = "dropdown",
					hijack_netrw = true,
					sorting_strategy = "ascending",
					grouped = true,
					mappings = {
						["i"] = {
							["<C-p>"] = action_layout.toggle_preview,
							["<C-y>"] = fb_actions.create,
						},
					},
				},
			},
		})
	end,
	init = function()
		local builtin = require("telescope.builtin")
		local extensions = require("telescope").extensions

		-- File Pickers.
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fa", builtin.git_files, {})
		vim.keymap.set("n", "<leader>fz", builtin.grep_string, {})
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, {})

		-- Vim Pickers.
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fe", builtin.oldfiles, {})
		vim.keymap.set("n", "<leader>fc", builtin.commands, {})
		vim.keymap.set("n", "<leader>fch", builtin.command_history, {})
		vim.keymap.set("n", "<leader>fsh", builtin.search_history, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>fm", builtin.marks, {})
		vim.keymap.set("n", "<leader>fkm", builtin.keymaps, {})
		vim.keymap.set("n", "<leader>ftp", builtin.filetypes, {})
		vim.keymap.set("n", "<leader>fsb", builtin.current_buffer_fuzzy_find, {})

		-- Neovim LSP Pickers.
		vim.keymap.set("n", "<leader>gr", builtin.lsp_references, {})
		vim.keymap.set("n", "<leader>gi", builtin.lsp_implementations, {})
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})

		-- Git Pickers.
		vim.keymap.set("n", "<leader>fgac", builtin.git_commits, {})
		vim.keymap.set("n", "<leader>fgc", builtin.git_bcommits, {})
		vim.keymap.set("n", "<leader>fgs", builtin.git_status, {})
		vim.keymap.set("n", "<leader>fgb", builtin.git_branches, {})

		-- Treesitter Picker.
		vim.keymap.set("n", "<leader>fy", builtin.treesitter, {})

		-- Lists Picker.
		vim.keymap.set("n", "<leader>lr", builtin.reloader, {})

		-- Customs.
		local function search_nvim_files()
			require("telescope.builtin").git_files({
				prompt_title = "Nvim Config",
				cwd = "$HOME/Documents/Code/jestebanrods/repos/dotfiles/editors/nvim/",
				show_untracked = true,
			})
		end

		local function buffer_browser()
			extensions.file_browser.file_browser({ path = "%:p:h" })
		end

		vim.keymap.set("n", "<leader>fr", buffer_browser, {})
		vim.keymap.set("n", "<leader>fdn", search_nvim_files, {})
		vim.keymap.set("n", "<leader>fn", extensions.file_browser.file_browser, {})

		-- Load Extensions.
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("file_browser")
	end,
}
