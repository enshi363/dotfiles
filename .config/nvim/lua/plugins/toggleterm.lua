return {
    {
        "akinsho/toggleterm.nvim",
        lazy = true,
        cmd = { "ToggleTerm" },
        keys = {
            {
                "<leader>Tf",
                function()
                    local count = vim.v.count1
                    require("toggleterm").toggle(count, 0, LazyVim.root.get(), "float")
                end,
                desc = "ToggleTerm (float root_dir)",
            },
            {
                "<leader>Th",
                function()
                    local count = vim.v.count1
                    require("toggleterm").toggle(count, 15, LazyVim.root.get(), "horizontal")
                end,
                desc = "ToggleTerm (horizontal root_dir)",
            },
            {
                "<leader>Tv",
                function()
                    local count = vim.v.count1
                    require("toggleterm").toggle(count, vim.o.columns * 0.4, LazyVim.root.get(), "vertical")
                end,
                desc = "ToggleTerm (vertical root_dir)",
            },
            {
                "<leader>Tg",
                function()
                    local count = vim.v.count1
                    local Terminal = require('toggleterm.terminal').Terminal
                    local lazygit  = Terminal:new({
                        cmd = "lazygit",
                        hidden = true,
                        direction = 'float',
                        float_opts = {
                            width = 200,
                            height = 90,
                        },
                    })

                    function _lazygit_toggle()
                        lazygit:toggle()
                    end
                    _lazygit_toggle()
                    
                end,
                desc = "ToggleLazyGit",
            },
            {
                "<leader>Tn",
                "<cmd>ToggleTermSetName<cr>",
                desc = "Set term name",
            },
            {
                "<leader>Ts",
                "<cmd>TermSelect<cr>",
                desc = "Select term",
            },
        },
    }
}
