-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

-- Integracion de yazi en lazivim
vim.api.nvim_create_user_command("Yazi", function()
  local Terminal = require("lazy.util").float_term
  vim.defer_fn(function()
    Terminal({ "yazi" }, { border = "rounded" })
  end, 100) -- Espera 100ms antes de ejecutar
end, {})
