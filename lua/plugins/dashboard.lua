return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        math.randomseed(os.time())

        local function footer()
            local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
            local version = vim.version()
            local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
            return datetime .. "" .. nvim_version_info
        end

        local logo = {
            "",
            "",
            "",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢛⣥⠈⣿⣿⠿⠛⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢡⠠⡿⢋⣴⣿⣿⠀⣩⣴⡿⢰⣿⣿⣿⢿⢿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⡿⢿⢃⣿⡇⢠⢇⣿⣿⣿⣼⣿⣿⡇⢘⣣⣤⣤⠄⣼⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⡅⡁⢼⣿⣷⠋⣾⡄⢿⣿⣿⡿⢟⣿⣿⣿⣿⡇⠸⠛⢿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣇⢣⣽⣿⣿⠠⣿⡇⣮⣿⣏⣾⣿⣿⣿⣿⣿⣤⣶⢃⣾⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣷⠈⠁⠀⠀⠀⠀⠁⠉⠉⠛⠿⢿⡏⣪⣴⣿⣿⣇⣘⠛⢻",
            "⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠫⣷⠛⠉⢥⣾⣿",
            "⣿⣿⣿⣿⠟⠉⢿⡇⢠⣀⢀⣀⢠⣄⣀⠀⠀⠀⠀⠀⠀⠀⣀⠀⣴⣾⣿⣿⣿",
            "⣿⣿⣿⡏⡘⢈⢀⡧⢱⣿⣿⣯⠉⡉⠍⣷⣦⣴⣶⣶⣾⢧⢐⠀⢉⠹⢿⣿⣿",
            "⣿⣿⣿⡁⡷⠃⠀⠛⠀⠉⠉⠉⠀⠀⠘⠛⠻⠿⠿⠛⠁⠀⠀⡐⡸⠀⡌⣿⣿",
            "⣿⣿⣿⣷⣦⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⠈⠓⣰⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣄⣠⣴⣾⣿⣿⣿",
            "⣿⣿⣿⣿⡿⠿⠿⢿⠏⠀⠀⠀⠀⠀⠀⠀⢀⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
            "⡿⠛⠉⠋⠀⠀⠀⢘⣿⣶⣦⡀⠀⠀⠀⠀⠁⠉⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣶⣤⣤⣀⠀⠀⢸⣿⣿⣿⣿⣄⠀⠀⠀⢀⣀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿",
            "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣇⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿",
            "",
            "",
        }

        dashboard.section.header.val = logo
        dashboard.section.header.opts.hl = "Identifier"

        dashboard.section.buttons.val = {
            dashboard.button("SPC e", "  New file", "<cmd>ene<CR>"),
            dashboard.button("SPC n", "  Toggle file explorer", "<cmd>Neotree toggle<CR>"),
            dashboard.button("SPC r r", "  Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("SPC f f", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC f s", "  Find Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("q", "  Quit NVIM", "<cmd>:qa<CR>"),
        }

        dashboard.section.footer.val = footer()
        dashboard.section.footer.opts.hl = "Constant"

        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
