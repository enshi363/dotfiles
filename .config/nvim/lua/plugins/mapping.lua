local opt = {
  noremap = true,
  silent = true,
}
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", opt)
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", opt)
-- vim.api.nvim_set_keymap("n", "<leader>x", ":bd<CR>", opt)
return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          ["<C-p>"] = { "<cmd>Telescope find_files<cr>", desc = "find files" },
          ["<C-\\>"] = { "<cmd>Telescope live_grep<cr>", desc = "grep files" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
      },
    },
  },
}
