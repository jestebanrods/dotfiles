-- Default Theme.
local function change_scheme()
    local colorscheme = vim.g.colors_name
    local default = "nordfox"

    if colorscheme == default then
        default = "dayfox"
    end

    vim.cmd("colorscheme " .. default)
end

return {
    "EdenEast/nightfox.nvim",
    keys = {
        {
            "<leader>cc",
            change_scheme,
            desc = "ColorScheme Toggle"
        }
    },
    opts = {
        options = {
            transparent = false,
            styles = {
                comments = "italic",
                functions = "italic,bold",
                keywords = "bold",
                types = "italic,bold"
            }
        }
    },
    init = function()
        vim.cmd("colorscheme nordfox")
    end
}
