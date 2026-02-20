return {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local bufferline = require("bufferline")
        bufferline.setup({
            options = {
                indicator = {
                    style = "underline",
                },
                separator_style = "slant",
                show_buffer_close_icons = false,
                show_close_icon = false,
                mode = "buffers",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        text_align = "center",
                        highlight = "Directory",
                        separator = true,
                    },
                },
            },
        })
    end,
}
