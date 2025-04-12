return {
    {
        "phaazon/hop.nvim",
        branch = 'v2',                               -- or the branch you use
        event = {"BufReadPost","BufNewFile"},
        config = function()

            local hop = require("hop")
            hop.setup()
            local directions = require("hop.hint").HintDirection
            vim.keymap.set(
                "",
                "f",
                function()
                    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "F",
                function()
                    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "t",
                function()
                    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "T",
                function()
                    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "<leader>w",
                function()
                    hop.hint_words()
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "<leader>f",
                function()
                    hop.hint_char1({ direction = directions.AFTER_CURSOR })
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "<leader>F",
                function()
                    hop.hint_char1({ direction = directions.BEFORE_CURSOR })
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "<leader>t",
                function()
                    hop.hint_char1({ direction = directions.AFTER_CURSOR })
                end,
                { remap = true, silent = true }
            )

            vim.keymap.set(
                "",
                "<leader>T",
                function()
                    hop.hint_char1({ direction = directions.BEFORE_CURSOR })
                end,
                { remap = true, silent = true }
            )
        end,
    }
}
