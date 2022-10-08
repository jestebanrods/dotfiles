local ok, mason = pcall(require, "mason")
if not ok then
    return
end

local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({})

mason_lspconfig.setup({
    automatic_installation = true,
})

mason_tool_installer.setup({
    ensure_installed = {
        -- LSP
        "gopls",
        "intelephense",
        "phpactor",
        "lua-language-server",
        -- Formatter
        "blade-formatter",
        "golangci-lint",
        "goimports",
        "stylua",
    },
    auto_update = false,
    run_on_start = true,
    start_delay = 3000,
})
