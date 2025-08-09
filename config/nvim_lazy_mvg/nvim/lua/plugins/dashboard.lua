return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    local portrait = [[]]
    local text = [[
███╗   ██╗ ██████╗ ████████╗██╗     ██╗███╗   ███╗██████╗ ███████╗██╗   ██╗
████╗  ██║██╔═══██╗╚══██╔══╝██║     ██║████╗ ████║██╔══██╗██╔════╝██║   ██║
██╔██╗ ██║██║   ██║   ██║   ██║     ██║██╔████╔██║██║  ██║█████╗  ██║   ██║
██║╚██╗██║██║   ██║   ██║   ██║     ██║██║╚██╔╝██║██║  ██║██╔══╝  ╚██╗ ██╔╝
██║ ╚████║╚██████╔╝   ██║   ███████╗██║██║ ╚═╝ ██║██████╔╝███████╗ ╚████╔╝ 
╚═╝  ╚═══╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝╚═╝     ╚═╝╚═════╝ ╚══════╝  ╚═══╝  
    ]]

    local logo = portrait .. "\n\n" .. text .. "\n\n"

    opts.dashboard.preset = opts.dashboard.preset or {}
    opts.dashboard.preset.header = logo
    opts.dashboard.preset.keys = {
      { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
      { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
      { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
      { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
      {
        icon = " ",
        key = "c",
        desc = "Config",
        action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
      },
      { icon = " ", key = "s", desc = "Restore Session", section = "session" },
      { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
      { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
      { icon = " ", key = "q", desc = "Quit", action = ":qa" },
    }

    opts.dashboard.sections = {
      { section = "header" },
      { section = "keys", gap = 1, padding = 1 },
      { section = "startup" },
    }

    return opts
  end,
}
