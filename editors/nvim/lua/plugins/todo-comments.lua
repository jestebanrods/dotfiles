-- Highlight Comments.
return {
    "folke/todo-comments.nvim",
    event = { "BufNewFile", "BufRead", "BufAdd" },
    dependencies = "nvim-lua/plenary.nvim",
    config = true
}
