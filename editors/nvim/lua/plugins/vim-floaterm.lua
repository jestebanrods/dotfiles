-- Adds Terminal Display In Floating Window.
return {
    "voldikss/vim-floaterm",
    cmd = "FloatermNew",
    keys = {
        {
            "``",
            "<cmd>FloatermToggle<cr>",
            desc = "Floaterm Toggle",
            mode = {
                "n",
                "t"
            }
        },
        {
            "`n",
            "<cmd>FloatermNext<cr>",
            desc = "Floaterm Next",
            mode = {
                "n",
                "t"
            }
        },
        {
            "`p",
            "<cmd>FloatermPrev<cr>",
            desc = "Floaterm Prev",
            mode = {
                "n",
                "t"
            }
        },
        {
            "`c",
            "<cmd>FloatermNew<cr>",
            desc = "Floaterm New",
            mode = {
                "n",
                "t"
            }
        },
        {
            "`x",
            "<cmd>FloatermKill<cr>",
            desc = "Floaterm Kill",
            mode = {
                "n",
                "t"
            }
        }
    },
    init = function()
        vim.g.floaterm_title = " Terminal: $1/$2 "
    end
}
