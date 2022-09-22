local ok, configs = pcall(require, "vim-test")
if not ok then
    return
end

vim.g["test#preserve_screen"] = 1

vim.cmd([[
    let test#strategy = 'neovim'
    let test#neovim#term_position = 'vert'
    let g:test#preserve_screen = 1
]])

vim.api.nvim_set_keymap("n", "<leader>tn", ":TestNearest<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tf", ":TestFile<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ts", ":TestSuit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tl", ":TestLast<CR>", { noremap = true })
