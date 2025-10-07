if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "saghen/blink.cmp",
  dependencies = { "Kurama622/llm.nvim" },
  opts = {
    completion = {
      menu = {
        scrollbar = false,
        border = "rounded",
        winhighlight = "Normal:BlinkCmpMenu,FloatBorder:FloatBorder",

        draw = {
          components = {
            kind_icon = {
              ellipsis = false,
              text = function(ctx)
                local mini_icons = require "mini.icons"
                local kind_name = ctx.item.kind_name or "lsp"

                local success, kind_icon, _, _ = pcall(mini_icons.get, kind_name, ctx.kind)
                if not success then kind_icon = " " end
                return kind_icon
              end,

              -- Optionally, you may also use the highlights from mini.icons
              highlight = function(ctx)
                local mini_icons = require "mini.icons"
                local kind_name = ctx.item.kind_name or "lsp"

                local success, _, hl, _ = pcall(mini_icons.get, kind_name, ctx.kind)
                if not success then hl = "BlinkCmpKindSnippet" end
                return hl
              end,
            },
          },
        },
      },
      documentation = { window = { border = "rounded" } },
      trigger = {
        prefetch_on_insert = true,

        -- allow triggering by white space

        show_on_blocked_trigger_characters = {},
      },
    },

    keymap = {
      ["<C-y>"] = {
        function(cmp) cmp.show { providers = { "llm" } } end,
      },
    },

    sources = {
      -- if you want to use auto-complete
      default = { "llm" },

      per_filetype = {
        -- optionally inherit from the `default` sources
        -- e.g. set completion for llm buffer
        -- llm = { inherit_defaults = true, "path" }, -- enable: "llm", "llm_cmds", "path"
        llm = { inherit_defaults = false }, -- enbale: "llm_cmds"
      },

      ---@note Windsurf does not require the following configuration
      providers = {
        llm = {
          name = "LLM",
          module = "llm.common.completion.frontends.blink",
          timeout_ms = 10000,
          score_offset = 100,
          async = true,
        },
      },
    },
  },
}
