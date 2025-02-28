vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
--vim.cmd("set smartindent")

vim.opt.showmode = false
vim.opt.fillchars:append({ eob = " " })

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.wo.number = true
vim.opt.relativenumber = true
vim.api.nvim_create_autocmd("InsertEnter", { command = [[set norelativenumber]] })
vim.api.nvim_create_autocmd("InsertLeave", {
   callback = function()
      -- Check if current buffer is not a Neo-tree buffer
      if vim.bo.filetype ~= "neo-tree" then
         vim.cmd("set relativenumber")
      end
   end,
})
-- vim.api.nvim_create_autocmd("InsertLeave", { command = [[set relativenumber]] })

vim.opt.swapfile = false
-- Set options
vim.opt.fillchars = {
  vert = ' ',
}

-- Set highlight groups
vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE", fg = "NONE" })
