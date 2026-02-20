return {
  -- amongst your other plugins
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  -- or
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {--[[ things you want to change go here]]

      size = 20, -- tamaño de la terminal
      open_mapping = [[<c-t>]], -- combinación de teclas para abrir la terminal (ctrl + /)
      direction = "horizontal", -- dirección de la terminal
      shade_terminals = true, -- oscurecer terminales no activas
      start_in_insert = true, -- empezar en modo Insert
      insert_mappings = true, -- permitir mapeos en modo Insert
      persist_size = true, -- mantener el tamaño entre sesiones
      winblend = 0,
      highlights = {
        Normal = {
          guibg = "#1e1e1e", -- color de fondo para la terminal
        },
        NormalFloat = {
          link = "Normal",
        },
      },
      float_opts = {
        border = "curved",
        title_pos = "center",
      },
    },
  },
}
