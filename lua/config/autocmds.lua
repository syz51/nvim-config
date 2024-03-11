-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gleam",
  callback = function()
    -- Update this to your Gleam comment syntax
    vim.bo.commentstring = "// %s"
  end,
})
