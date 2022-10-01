local ok, tabline = pcall(require, "tabline")
if not ok then
    return
end

tabline.setup({
    enable = true,
    options = {
        modified_icon = "+ ",
        modified_italic = false,
        show_tabs_only = true,
    }
})
