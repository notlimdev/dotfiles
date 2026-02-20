-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Mapas para abrir la terminal flotante

vim.keymap.set("n", "<C-t>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })

-- Mapas para cerrar la terminal desde el modo terminal
vim.keymap.set("t", "<C-t>", "<cmd>close<cr>", { desc = "Hide Terminal" })

-- Keymaps para arbir yazi en lazyvim
vim.keymap.set("n", "<leader>fy", "<cmd>Yazi<cr>", { desc = "Explorer Files Yazi" })

-- buscador de emojis

vim.api.nvim_set_keymap("n", "<leader>se", ":Emoji<CR>", { noremap = true, silent = true })
