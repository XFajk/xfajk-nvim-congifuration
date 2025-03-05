-- Customizing vim options
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu rnu")

-- Creating custom key mappings
vim.keymap.set("n", "<C-s>", ":w<CR>", {}) -- Saves file
vim.keymap.set("n", "<C-y>", ":redo<CR>", {}) -- redo
vim.keymap.set("n", "<C-z>", ":undo<CR>", {}) -- und

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.py",
  callback = function()
    vim.cmd("LspRestart")
  end
})
