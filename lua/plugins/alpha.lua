return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = [[
            ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢛⣥⠈⣿⣿⠿⠛⣿⣿⣿⣿⣿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢡⠠⡿⢋⣴⣿⣿⠀⣩⣴⡿⢰⣿⣿⣿⢿⢿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⡿⢿⢃⣿⡇⢠⢇⣿⣿⣿⣼⣿⣿⡇⢘⣣⣤⣤⠄⣼⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⡅⡁⢼⣿⣷⠋⣾⡄⢿⣿⣿⡿⢟⣿⣿⣿⣿⡇⠸⠛⢿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣇⢣⣽⣿⣿⠠⣿⡇⣮⣿⣏⣾⣿⣿⣿⣿⣿⣤⣶⢃⣾⣿
            ⣿⣿⣿⣿⣿⣿⣿⣷⠈⠁⠀⠀⠀⠀⠁⠉⠉⠛⠿⢿⡏⣪⣴⣿⣿⣇⣘⠛⢻
            ⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠫⣷⠛⠉⢥⣾⣿
            ⣿⣿⣿⣿⠟⠉⢿⡇⢠⣀⢀⣀⢠⣄⣀⠀⠀⠀⠀⠀⠀⠀⣀⠀⣴⣾⣿⣿⣿
            ⣿⣿⣿⡏⡘⢈⢀⡧⢱⣿⣿⣯⠉⡉⠍⣷⣦⣴⣶⣶⣾⢧⢐⠀⢉⠹⢿⣿⣿
            ⣿⣿⣿⡁⡷⠃⠀⠛⠀⠉⠉⠉⠀⠀⠘⠛⠻⠿⠿⠛⠁⠀⠀⡐⡸⠀⡌⣿⣿
            ⣿⣿⣿⣷⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⠈⠓⣰⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣄⣠⣴⣾⣿⣿⣿
            ⣿⣿⣿⣿⡿⠿⠿⢿⠏⠀⠀⠀⠀⠀⠀⠀⢀⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
            ⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
            ⣿⣿⣿⣿⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
            ⡿⠛⠉⠋⠀⠀⠀⢘⣿⣶⣦⡀⠀⠀⠀⠀⠁⠉⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿
            ⣿⣶⣤⣤⣀⠀⠀⢸⣿⣿⣿⣿⣄⠀⠀⠀⢀⣀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿
            ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣇⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿
        ]]

        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", "<cmd>ene<CR>"),
            dashboard.button("Ctrl n", "  Toggle file explorer", "<cmd>Neotree toggle<CR>"),
            dashboard.button("SPC rr", "  Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("SPC ff", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC fs", "  Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("q", "  Quit NVIM", "<cmd>:qa<CR>"),
        }

        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
