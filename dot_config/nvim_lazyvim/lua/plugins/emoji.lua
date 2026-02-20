return {
  "saghen/blink.cmp",
  optional = true,
  dependencies = { "allaman/emoji.nvim", "saghen/blink.compat" },
  opts = function(_, opts)
    opts.sources = opts.sources or {}
    table.insert(opts.sources.default, "emoji")

    opts.sources.providers = opts.sources.providers or {}
    opts.sources.providers.emoji = {
      name = "emoji",
      module = "blink.compat.source",
      transform_items = function(ctx, items)
        local kind = require("blink.cmp.types").CompletionItemKind.Text
        for i = 1, #items do
          items[i].kind = kind
        end
        return items
      end,
    }
  end,
}
