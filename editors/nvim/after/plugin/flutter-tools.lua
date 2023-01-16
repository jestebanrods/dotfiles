local ok, fluttertools = pcall(require, "flutter-tools")
if not ok then
	return
end

local home_dir = os.getenv("HOME")
package.path = home_dir .. "/.config/nvim/after/plugin/?.lua;" .. package.path
local on_attach = require("lsp")

fluttertools.setup({
	flutter_path = "/opt/flutter/bin/flutter",
	lsp = {
		on_attach = on_attach,
	},
	debugger = {
		enabled = false,
		run_via_dap = false,
	},
})
