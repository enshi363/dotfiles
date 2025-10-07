return {
  "neovim/nvim-lspconfig",
  opts = {
    -- you can do any additional lsp server setup here
    -- return true if you don't want this server to be setup with lspconfig
    ---@type table<string, fun(server:string, opts:_.lspconfig.options):boolean?>
    setup = {
      -- volar = function(_, opts)
      -- require("lspconfig").volar.setup {
      --   server = opts,
      --   filetypes = { "javascript", "typescript", "vue", "json" },
      -- }
      -- return true
      -- end,
    },
  },
}
