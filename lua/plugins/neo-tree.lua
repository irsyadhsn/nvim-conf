return {
   "nvim-neo-tree/neo-tree.nvim",
   branch = "v3.x",
   dependencies = {
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
   },
   config = function()
      require("neo-tree").setup({
         popup_border_style = "rounded",
         filesystem = {
            follow_current_file = { enabled = true },
         },
         default_component_configs = {
            indent = {
               indent_size = 2,
               padding = 1, -- extra padding on left hand side
               -- indent guides
               with_markers = true,
               indent_marker = "│",
               last_indent_marker = "└",
               highlight = "NeoTreeIndentMarker",
               -- expander config, needed for nesting files
               with_expanders = "enabled", -- if nil and file nesting is enabled, will enable expanders
               expander_collapsed = "",
               expander_expanded = "",
               expander_highlight = "NeoTreeExpander",
            },
            icon = {
               folder_closed = "󰉋",
               folder_open = "",
               folder_empty = "󰜌",
               provider = function(icon, node) -- default icon provider utilizes nvim-web-devicons if available
                  if node.type == "file" or node.type == "terminal" then
                     local success, web_devicons = pcall(require, "nvim-web-devicons")
                     local name = node.type == "terminal" and "terminal" or node.name
                     if success then
                        local devicon, hl = web_devicons.get_icon(name)
                        icon.text = devicon or icon.text
                        icon.highlight = hl or icon.highlight
                     end
                  end
               end,
               default = "",
               highlight = "NeoTreeFileIcon",
            },
            modified = {
               symbol = "",
               highlight = "NeoTreeModified",
            },
            name = {
               trailing_slash = false,
               use_git_status_colors = true,
               highlight = "NeoTreeFileName",
            },
            git_status = {
               symbols = {
                  -- Change type
                  added = "+", -- or "✚", but this is redundant info if you use git_status_colors on the name
                  modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
                  deleted = "✖", -- this can only be used in the git_status source
                  renamed = "󰁕", -- this can only be used in the git_status source
                  -- Status type
                  untracked = " ",
                  ignored = "",
                  unstaged = "󰄱",
                  staged = "",
                  conflict = "",
               },
            },
            -- If you don't want to use these columns, you can set `enabled = false` for each of them individually
            file_size = {
               enabled = true,
               width = 12, -- width of the column
               required_width = 64, -- min width of window required to show this column
            },
            type = {
               enabled = true,
               width = 10, -- width of the column
               required_width = 122, -- min width of window required to show this column
            },
            last_modified = {
               enabled = true,
               width = 20, -- width of the column
               required_width = 88, -- min width of window required to show this column
            },
            created = {
               enabled = true,
               width = 20, -- width of the column
               required_width = 110, -- min width of window required to show this column
            },
            symlink_target = {
               enabled = false,
            },
         },
      })
      vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#BFECFF" })
      vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = "#C5D3E8" })
      vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#C9E9D2" })
      vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#FFB0B0" })
      vim.keymap.set("n", "<C-n>", "<Cmd>Neotree toggle<CR>", {})
   end,
}
