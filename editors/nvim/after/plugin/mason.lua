local ok, mason = pcall(require, "mason")
if not ok then
    return
end

local mason_lspconfig = require("mason-lspconfig")

mason.setup({})

mason_lspconfig.setup({
    automatic_installation = true,
})
