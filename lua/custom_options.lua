-- Customizing vim options
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu rnu")
vim.cmd("set spelllang=en,sk")
vim.cmd("set spell")

-- Creating custom key mappings
vim.keymap.set("n", "<C-s>", ":w<CR>", {}) -- Saves file

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.py",
  callback = function()
    vim.cmd("LspRestart")
  end
})
