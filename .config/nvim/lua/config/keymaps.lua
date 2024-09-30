-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opt = {
  noremap = true,
  silent = true,
}
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", opt)
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", opt)
vim.api.nvim_set_keymap("n", "<leader>x", ":bd<CR>", opt)
