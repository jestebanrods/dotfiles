local ok, telescope = pcall(require, 'telescope')
if not ok then
    return
end

telescope.setup({
    defaults = {
        prompt_prefix = '❯ ',
        selection_caret = '❯ ',
        winblend = 0,
        layout_strategy = 'horizontal',
        layout_config = {
            width = 0.95,
            height = 0.85,
            prompt_position = 'bottom',
            horizontal = {
                preview_width = function(_, cols, _)
                    if cols > 200 then
                        return math.floor(cols * 0.5)
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
        history = {
            path = '~/.local/share/nvim/databases/telescope_history.sqlite3',
            limit = 200,
        },
    },
    extensions = {
        file_browser = {
            theme = 'ivy',
            hijack_netrw = true,
        },
    },
})

vim.keymap.set('n', '<leader>ff', require 'telescope.builtin'.git_files, { remap = false })
vim.keymap.set('n', '<leader>fa', require 'telescope.builtin'.find_files, { remap = false })
vim.keymap.set('n', '<leader>fs', require 'telescope.builtin'.live_grep, { remap = false })
vim.keymap.set('n', '<leader>fq', require 'telescope.builtin'.current_buffer_fuzzy_find, { remap = false })
vim.keymap.set('n', '<leader>fb', require 'telescope.builtin'.buffers, { remap = false })
vim.keymap.set('n', '<leader>fh', require 'telescope.builtin'.help_tags, { remap = false })
vim.keymap.set('n', '<leader>fhk', require 'telescope.builtin'.keymaps, { remap = false })
vim.keymap.set('n', '<leader>fgb', require 'telescope.builtin'.git_branches, { remap = false })
vim.keymap.set('n', '<leader>fgs', require 'telescope.builtin'.git_status, { remap = false })
vim.keymap.set('n', '<leader>fc', require 'telescope.builtin'.command_history, { remap = false })
vim.keymap.set('n', '<leader>fy', require 'telescope.builtin'.lsp_document_symbols, { remap = false })
vim.keymap.set('n', '<leader>fx', require 'telescope.builtin'.treesitter, { remap = false })
vim.keymap.set('n', '<leader>fd', require 'telescope.builtin'.diagnostics, { remap = false })

vim.keymap.set('n', 'gd', require 'telescope.builtin'.lsp_definitions, { remap = false })
vim.keymap.set('n', 'gr', require 'telescope.builtin'.lsp_references, { remap = false })
vim.keymap.set('n', 'gi', require 'telescope.builtin'.lsp_implementations, { remap = false })
vim.keymap.set('n', 'gtd', require 'telescope.builtin'.lsp_type_definitions, { remap = false })

vim.api.nvim_set_keymap('n', '<leader>fn', ':Telescope file_browser<CR><C-l>', { noremap = true })

telescope.load_extension('file_browser')
telescope.load_extension('notify')
