local cmp = require("cmp")
local lspkind = require("lspkind")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local luasnip = require("luasnip")
local compare = require("cmp.config.compare")

local M = {}

function M.setup()
	luasnip.filetype_extend("dart", { "flutter" })
	luasnip.filetype_extend("vue", { "vue" })

	require("luasnip.loaders.from_vscode").lazy_load()
	require("core.snippets")

	-- LuaSnip Keymaps.
	vim.keymap.set({ "i", "s" }, "<C-k>", function()
		if luasnip.expand_or_jumpable() then
			luasnip.expand_or_jump()
		end
	end, { silent = true })

	vim.keymap.set({ "i", "s" }, "<C-j>", function()
		if luasnip.jumpable(-1) then
			luasnip.jump(-1)
		end
	end, { silent = true })

	vim.keymap.set("i", "<C-l>", function()
		if luasnip.choice_active() then
			luasnip.change_choice(1)
		end
	end)

	local has_words_before = function()
		unpack = unpack or table.unpack
		local line, col = unpack(vim.api.nvim_win_get_cursor(0))
		return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
	end

	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		mapping = cmp.mapping.preset.insert({
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
			["<Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.choice_active() then
					luasnip.change_choice(1)
				else
					fallback()
				end
			end, { "i", "s" }),
			["<S-Tab>"] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, { "i", "s" }),
		}),
		sources = cmp.config.sources({
			{ name = "copilot" },
			{ name = "nvim_lsp" },
			{ name = "nvim_lsp_signature_help" },
			{ name = "luasnip" },
			{ name = "nvim_lua" },
			{ name = "path" },
			{ name = "buffer" },
		}),
		formatting = {
			format = lspkind.cmp_format({
				mode = "symbol_text",
				maxwidth = 50,
				ellipsis_char = "...",
				before = function(entry, vim_item)
					return vim_item
				end,
				with_text = true,
				menu = {
					nvim_lua = "[Lua]",
					nvim_lsp = "[LSP]",
					luasnip = "[LuaSnip]",
					buffer = "[Buffer]",
					path = "[Path]",
					copilot = "[Copilot]",
				},
			}),
		},
		sorting = {
			priority_weight = 2,
			comparators = {
				compare.kind,
				compare.sort_text,
			},
		},
		experimental = {
			native_menu = false,
			ghost_text = true,
		},
	})

	cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

	cmp.setup.cmdline({ "/", "?" }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = "buffer" },
		},
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return M
