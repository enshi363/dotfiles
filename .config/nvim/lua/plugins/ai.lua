-- if true then
--   return {}
-- end
return {
  {
    "milanglacier/minuet-ai.nvim",
    config = function()
      require("minuet").setup({
        -- Your configuration options here
        -- provider = "openai_fim_compatible",
        provider = "openai_compatible",
        n_completions = 1,
        context_window = 16000,
        after_cursor_filter_length = 1024,
        before_cursor_filter_length = 1024,
        provider_options = {
          openai_compatible = {
            -- For Windows users, TERM may not be present in environment variables.
            -- Consider using APPDATA instead.
            name = "completions",
            -- end_point = "http://192.168.8.108:11435/v1/chat/completions",
            -- model = "qwen2.5-coder:latest",
            -- api_key = "TERM",
            end_point = "https://open.bigmodel.cn/api/paas/v4/chat/completions",
            -- model = "glm-4-flash",
            model = "glm-4.5-flash",
            api_key = "LLM_KEY",
            -- end_point = "https://openrouter.ai/api/v1/chat/completions",
            -- model = "qwen/qwen-2.5-coder-32b-instruct:free",
            -- api_key = "OPENROUTER_API_KEY",
            stream = true,
            optional = {
              max_tokens = nil,
              stop = nil,
              -- stop = { "\n\n" },
            },
            template = {
              prompt = function(context_before_cursor, context_after_cursor, _)
                return "<|fim_prefix|>"
                  .. context_before_cursor
                  .. "<|fim_suffix|>"
                  .. context_after_cursor
                  .. "<|fim_middle|>"
              end,
              suffix = false,
            },
          },
        },
        -- lsp = {
        --   enabled_auto_trigger_ft = { "go", "php", "typescript" },
        -- },

        virtualtext = {
          auto_trigger_ft = { "go", "php", "typescript" },
          keymap = {
            -- accept whole completion
            accept = "<C-a>",
            -- accept one line
            accept_line = "<C-l>",
            -- accept n lines (prompts for number)
            -- e.g. "A-z 2 CR" will accept 2 lines
            accept_n_lines = "<C-z>",
            -- Cycle to prev completion item, or manually invoke completion
            prev = "<C-[>",
            -- Cycle to next completion item, or manually invoke completion
            next = "<C-]>",
            dismiss = "<C-d>",
          },
        },
      })
    end,
  },
  { "nvim-lua/plenary.nvim" },
  -- optional, if you are using virtual-text frontend, nvim-cmp is not
  -- required.
}
