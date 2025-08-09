return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy", -- Se carga solo cuando es necesario
    opts = function(_, opts)
      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
        indicator = {
          style = "underline",
        },
        separator_style = "slant",
        show_buffer_close_icons = true,
        show_close_icon = false,
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      })
    end,
  },
}
