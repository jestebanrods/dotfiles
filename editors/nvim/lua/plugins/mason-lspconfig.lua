-- Bridges Mason & LSPConfig.
return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "ansiblels",
            "bashls",
            "cssls",
            "docker_compose_language_service",
            "dockerls",
            "gopls",
            "html",
            "jsonls",
            "lua_ls",
            "phpactor",
            "sqlls",
            "tsserver",
            "vuels",
            "yamlls"
        },
        automatic_installation = true,
    }
}
