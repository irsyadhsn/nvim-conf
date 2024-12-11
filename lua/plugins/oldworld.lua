return {
	"dgox16/oldworld.nvim",
	lazy = false,
	priority = 1000,

	config = function()
		require("oldworld").setup({
			styles = {
				booleans = { italic = true, bold = true },
			},
			integrations = {
				hop = true,
				telescope = false,
			},
		})
		vim.cmd.colorscheme("oldworld")
	end,
}
