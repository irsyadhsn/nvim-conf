return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			highlights = {
				buffer_selected = { bold = true },
				diagnostic_selected = { bold = true },
				info_selected = { bold = true },
				info_diagnostic_selected = { bold = true },
				warning_selected = { bold = true },
				warning_diagnostic_selected = { bold = true },
				error_selected = { bold = true },
				error_diagnostic_selected = { bold = true },
			},
			options = {
				hover = {
					enabled = true,
					delay = 150,
					reveal = { "close" },
				},
				offsets = {
					{
						filetype = "neo-tree",
						separator = true,
						text = "neo tree",
						highlight = true,
					},
				},
				diagnostics = "nvim_lsp",
				modified_icon = "●",
				show_close_icon = false,
				show_buffer_close_icons = false,
			},
		})
		vim.keymap.set("n", "<S-e>", "<CMD>BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<S-b>", "<CMD>BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "]b", "<CMD>BufferLineMoveNext<CR>")
		vim.keymap.set("n", "[b", "<CMD>BufferLineMovePrev<CR>")
	end,
}
