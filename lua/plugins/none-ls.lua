return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<leader>ee", function()
			-- If we find a floating window, close it.
			local found_float = false
			for _, win in ipairs(vim.api.nvim_list_wins()) do
				if vim.api.nvim_win_get_config(win).relative ~= "" then
					vim.api.nvim_win_close(win, true)
					found_float = true
				end
			end

			if found_float then
				return
			end

			vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
		end, { desc = "Toggle Diagnostics" })
	end,
}
