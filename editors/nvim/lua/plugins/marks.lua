-- Marks Visualizer.
return {
    "chentoast/marks.nvim",
    opts = {
        excluded_filetypes = {
            "NvimTree"
        },
        force_write_shada = true,
        bookmark_0 = {
            sign = "⚑",
            virt_text = "Mark 0"
        }
    }
}
