return {
  "Kurama622/llm.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
  cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
  config = function()
    local tools = require "llm.tools"
    require("llm").setup {
      -- url = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
      -- model = "glm-4-flash",
      -- api_type = "zhipu",
      url = "http://192.168.8.108:11435/v1/chat",
      model = "qwen2.5-coder:1.5b",
      api_type = "ollama",
      max_tokens = 256,
      temperature = 0.3,
      top_p = 0.7,

      completion = {
        handler = tools.completion_handler,
        opts = {
          style = "nvim-cmp",
          n_completions = 3,
          context_window = 512,
          default_filetype_enabled = true,

          auto_trigger = true,
          only_trigger_by_keywords = true,
          timeout = 100,
          throttle = 1000,
          debounce = 400,
          -- url = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
          url = "http://192.168.8.108:11435/v1/completions",
          model = "qwen2.5-coder:1.5b",
          -- fetch_key = function() return "sk-dddcc2889de04ea6928b150dd313959a" end,
          api_type = "ollama",
          max_tokens = 1024,
          filetypes = { sh = false, go = true },

          keymap = {
            toggle = {
              mode = "n",
              keys = "<leader>cp",
            },
            virtual_text = {
              accept = {
                mode = "i",
                keys = "<A-a>",
              },
              next = {
                mode = "i",
                keys = "<A-n>",
              },
              prev = {
                mode = "i",
                keys = "<A-p>",
              },
              toggle = {
                mode = "n",
                keys = "<leader>cp",
              },
            },
          },
        },
      },

      keys = {
        -- The keyboard mapping for the input window.
        ["Input:Submit"] = { mode = "n", key = "<cr>" },
        ["Input:Cancel"] = { mode = { "n", "i" }, key = "<C-c>" },
        ["Input:Resend"] = { mode = { "n", "i" }, key = "<C-r>" },

        -- only works when "save_session = true"
        ["Input:HistoryNext"] = { mode = { "n", "i" }, key = "<C-j>" },
        ["Input:HistoryPrev"] = { mode = { "n", "i" }, key = "<C-k>" },

        -- The keyboard mapping for the output window in "split" style.
        ["Output:Ask"] = { mode = "n", key = "i" },
        ["Output:Cancel"] = { mode = "n", key = "<C-c>" },
        ["Output:Resend"] = { mode = "n", key = "<C-r>" },

        -- The keyboard mapping for the output and input windows in "float" style.
        ["Session:Toggle"] = { mode = "n", key = "<leader>ac" },
        ["Session:Close"] = { mode = "n", key = { "<esc>", "Q" } },

        -- Scroll
        ["PageUp"] = { mode = { "i", "n" }, key = "<C-b>" },
        ["PageDown"] = { mode = { "i", "n" }, key = "<C-f>" },
        ["HalfPageUp"] = { mode = { "i", "n" }, key = "<C-u>" },
        ["HalfPageDown"] = { mode = { "i", "n" }, key = "<C-d>" },
        ["JumpToTop"] = { mode = "n", key = "gg" },
        ["JumpToBottom"] = { mode = "n", key = "G" },
      },
    }
  end,
  keys = {
    { "<leader>ac", mode = "n", "<cmd>LLMSessionToggle<cr>" },
  },
}
