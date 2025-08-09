return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   lazy = false,
  --   opts = {
  --     transparent_background = true,
  --     flavour = "frappe",
  --     integrations = {
  --       cmp = true,
  --       gitsigns = true,
  --       treesitter = true,
  --       notify = false,
  --       mini = {
  --         enabled = true,
  --         indentscope_color = "",
  --       },
  --     },
  --   },
  -- },
  -- {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = true,
    config = function()
      require("kanagawa").setup({
        -- ...todas tus opciones...
        transparent = true,
        overrides = function(colors)
          return {
            LineNr = { bg = "none" },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
            LspInfoBorder = { bg = "none" },

            -- Aquí agregas el grupo PARA EL DASHBOARD
            SnacksDashboardHeader = { fg = "#c4302b", bold = true }, -- Rojo
            -- Puedes añadir más (opcional):
            -- SnacksDashboardIcon = { fg = "#ff8800" },
            -- SnacksDashboardKey = { fg = "#00ff00", bold = true },
            -- SnacksDashboardDesc = { fg = "#ffffff" },
          }
        end,
        theme = "wave",
        background = {
          dark = "wave",
          light = "lotus",
        },
      })
    end,
  },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   opts = {
  --     transparent = true,
  --     styles = {
  --       sidebars = "transparent",
  --       floats = "transparent",
  --     },
  --   },
  -- },
  -- --NameColorSchema: {everforest,tokyonight,doom-one,aylin,oxocarbon,rose-pine,kanagawa,cyberdream}
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
