return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = { enabled = true },
			},
		})
		vim.keymap.set("n", "<C-n>", "<Cmd>Neotree toggle<CR>", {})
	end,
}
