local map = vim.keymap.set

-- Reload File
map("n", "<leader><leader>f", "<cmd>source %<CR>")

-- Disable/Enable Diagnostic Text
map("n", "<leader>dd", function()
	vim.diagnostic.config({
		virtual_text = not vim.diagnostic.config().virtual_text,
	})
end)

-- Delete Buffer
map("n", "bd", ":bd!<CR>")

-- Easy Moving Between Buffers
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")

-- Create Split Vertical
map("n", "<A-v>", ":vertical split<CR>")

-- Managment Tabs
map("n", "<leader>tn", ":tabnew<CR>")
map("n", "<A-;>", ":tabnext<CR>")

-- Symbols Undo Points
local symbols = { ",", ".", "!", "?", "$", ">", "<" }

for _, symbol in pairs(symbols) do
	map("i", symbol, symbol .. "<c-g>u")
end

-- Tabulation
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Movements
map("n", "gg", "gg0")

-- Search Result Focus
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
