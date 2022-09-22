local ok, _ = pcall(require, "telescope")
if not ok then
	return
end

local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")

require('telescope').setup {
    defaults = {
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        winblend = 0,

        layout_strategy = "horizontal",
        layout_config = {
            width = 0.95,
            height = 0.85,
            -- preview_cutoff = 120,
            -- prompt_position = "top",

            horizontal = {
                preview_width = function(_, cols, _)
                    if cols > 200 then
                        return math.floor(cols * 0.4)
                    else
                        return math.floor(cols * 0.6)
                    end
                end,
            },

            vertical = {
                width = 0.9,
                height = 0.95,
                preview_height = 0.5,
            },

            flex = {
                horizontal = {
                    preview_width = 0.9,
                },
            },
        },

        selection_strategy = "reset",
        sorting_strategy = "descending",
        scroll_strategy = "cycle",
        color_devicons = true,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-s>"] = actions.select_horizontal,
                ["<C-n>"] = "move_selection_next",

                ["<C-y>"] = set_prompt_to_entry_value,

                -- These are new :)
                ["<M-p>"] = action_layout.toggle_preview,
                ["<M-m>"] = action_layout.toggle_mirror,
                -- ["<M-p>"] = action_layout.toggle_prompt_position,

                -- ["<M-m>"] = actions.master_stack,

                -- ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                -- ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

                -- This is nicer when used with smart-history plugin.
                ["<C-k>"] = actions.cycle_history_next,
                ["<C-j>"] = actions.cycle_history_prev,

                ["<c-space>"] = function(prompt_bufnr)
                    local opts = {
                        callback = actions.toggle_selection,
                        loop_callback = actions.send_selected_to_qflist,
                    }
                    require("telescope").extensions.hop._hop_loop(prompt_bufnr, opts)
                end,

                ["<C-w>"] = function()
                    vim.api.nvim_input("<c-s-w>")
                end,
            },
        },

        -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        -- file_ignore_patterns = nil,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        history = {
            path = "~/.local/share/nvim/databases/telescope_history.sqlite3",
            limit = 100,
        },
    },
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
        },
    },
}

vim.keymap.set('n', '<leader>ff', require 'telescope.builtin'.git_files, { remap = false })
vim.keymap.set('n', '<leader>fa', require 'telescope.builtin'.find_files, { remap = false })
vim.keymap.set('n', '<leader>fs', require 'telescope.builtin'.live_grep, { remap = false })
vim.keymap.set('n', '<leader>fb', require 'telescope.builtin'.buffers, { remap = false })
vim.keymap.set('n', '<leader>fh', require 'telescope.builtin'.help_tags, { remap = false })
vim.keymap.set('n', '<leader>fgb', require 'telescope.builtin'.git_branches, { remap = false })
vim.keymap.set('n', '<leader>fc', require 'telescope.builtin'.command_history, { remap = false })
vim.keymap.set('n', '<leader>ve', require 'telescope.builtin'.diagnostics, { remap = false })
vim.keymap.set('n', '<leader>fy', require 'telescope.builtin'.treesitter, { remap = false })

vim.api.nvim_set_keymap(
    "n",
    "<leader>fn",
    ":Telescope file_browser<CR><C-l>",
    { noremap = true }
)

-- vim.keymap.set('n', '<leader>fp', function()
-- 	return require("telescope").extensions.git_worktree.git_worktrees()
-- end, { remap = false })

require("telescope").load_extension "file_browser"
