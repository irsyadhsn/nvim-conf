return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
		require("catppuccin").setup({
			dim_inactive = {
				enabled = false, -- dims the background color of inactive window
				shade = "dark",
				percentage = 0.15, -- percentage of the shade to apply to the inactive window
			},
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			custom_highlights = function(colors)
				return {
					Comment = { fg = colors.flamingo },
					TabLineSel = { bg = colors.pink },
					CmpBorder = { fg = colors.surface2 },
					Pmenu = { bg = colors.none },
				}
			end,
		})
	end,
}
