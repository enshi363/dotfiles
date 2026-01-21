return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  dependencies = { "rafamadriz/friendly-snippets", "onsails/lspkind.nvim", "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    completion = {
      trigger = {
        -- show_in_snippet = false,
      },
      menu = {
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon" },
          },
          components = {
            kind_icon = {
              text = function(ctx)
                local icon = ctx.kind_icon
                if vim.tbl_contains({ "Path" }, ctx.source_name) then
                  local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
                  if dev_icon then
                    icon = dev_icon
                  end
                else
                  -- icon = require("lspkind").symbolic(ctx.kind, {
                  --   mode = "symbol_text",
                  -- })
                end

                return icon .. ctx.icon_gap
              end,
            },
          },
        },
      },
    },
    keymap = {
      ["<Tab>"] = {
        "select_next",
        "fallback",
      },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
