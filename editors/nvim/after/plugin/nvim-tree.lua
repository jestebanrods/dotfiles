local ok, nvimtree = pcall(require, "nvim-tree")
if not ok then
	return
end

vim.g.loaded = true
vim.g.loaded_netrwPlugin = true

nvimtree.setup({
	open_on_setup = true,
	open_on_tab = true,
	view = {
		width = 35,
		adaptive_size = true,
		hide_root_folder = true,
		side = "left",
		signcolumn = "yes",
	},
})

vim.api.nvim_set_keymap("n", "<leader>bb", ":NvimTreeFindFile <CR><C-l>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>bs", ":NvimTreeToggle <CR><C-l>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>bo", ":NvimTreeOpen <CR><C-l>", { noremap = true })
