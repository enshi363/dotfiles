if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "go",
      "php",
      "html",
      "json",
      "markdown",
      "javascript",
      "toml",
      "typescript",
      "vue",
      "yaml",
      "xml",
      "css",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
