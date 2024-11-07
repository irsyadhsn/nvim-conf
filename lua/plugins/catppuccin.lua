return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      no_italic = true,
      color_overrides = {
        mocha = {
          base = "#181818",
          mantle = "#151515",
          crust = "#222831",
        },
      },
      styles = {
        comments = { "italic" }, -- Style for comments
        keywords = { "bold" }, -- Style for keywords
      },
    })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
