return {
  "EdenEast/nightfox.nvim",
  priority = 1000,

  config = function()
    require("nightfox").setup({
      options = {
        terminal_colors = true,
      },
    })

--    vim.cmd.colorscheme("carbonfox")
  end,
}
