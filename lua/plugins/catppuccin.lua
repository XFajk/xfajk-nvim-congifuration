return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
    })
    vim.cmd.colorscheme "catppuccin"

    -- Set line number colors
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ddddee" })          -- Normal line numbers
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#f38ba8", bold = true }) -- Current line number
  end
}
