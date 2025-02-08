-- Basic Mapping Custom Keybindings.
local function map(mode, lhs, rhs, opts)
	local options = {
		noremap = true,
	}

	if opts then
		options = vim.tbl_extend("force", options, opts)
	end

	vim.keymap.set(mode, lhs, rhs, options)
end

local symbols = {
	",",
	".",
	"!",
	"?",
	"$",
	">",
	"<",
}

-- Symbols Undo Points
for _, symbol in pairs(symbols) do
	map("i", symbol, symbol .. "<c-g>u")
end

-- Buffers
map("n", "<leader>ba", ":e#<cr>")
map("n", "<leader>bn", ":bnext<cr>")
map("n", "<leader>bp", ":bprevious<cr>")
map("n", "<leader>bd", ":bd!<cr>")

-- Windows
map("n", "<A-h>", "<C-w>h")
map("n", "<A-j>", "<C-w>j")
map("n", "<A-k>", "<C-w>k")
map("n", "<A-l>", "<C-w>l")
map("n", "<A-9>", "<C-w>>")
map("n", "<A-0>", "<C-w><")
map("n", "<leader>wc", "<C-w>c<cr>")
map("n", "<leader>wo", "<C-w>o<cr>")

-- Change To Right Vertial Split
map("n", "<leader><leader>l", function()
	vim.cmd.wincmd("L")
end)

-- Splits
map("n", "<A-\\>", ":vertical split<cr>")
map("n", "<A-->", ":split<cr>")

-- Tabs
map("n", "<leader>tn", ":tabnew<cr>")
map("n", "<A-;>", ":tabnext<cr>")

-- Tabulation
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Movements
map("n", "gg", "gg0")

-- Search Result Focus
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Marks
map("n", "dam", ":delmarks a-zA-Z0-9<cr>")

-- Lua
map("n", "<leader>rlf", ":luafile %<cr>")
