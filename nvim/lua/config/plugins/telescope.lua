return {
    "nvim-telescope/telescope.nvim",
    -- event = "VimEnter",
    branch = "0.1.x",

    -- event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            -- If encountering errors, see telescope-fzf-native README for installation instructions
            "nvim-telescope/telescope-fzf-native.nvim",
            -- `build` is used to run some command when the plugin is installed/updated.
            -- This is only run then, not every time Neovim starts up.
            build = "make",
            -- `cond` is a condition used to determine whether this plugin should be
            -- installed and loaded.
            cond = function()
                return vim.fn.executable "make" == 1
            end
        },
        { "nvim-telescope/telescope-ui-select.nvim" }
    },
    config = function()
        local actions = require "telescope.actions"
        local action_state = require("telescope.actions.state")
        require("telescope").setup {
            defaults = {
                sorting_strategy = "ascending",
                layout_strategy = "bottom_pane",
                results_title = "",
                file_ignore_patterns = { "node_modules", ".pyc" },
                borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
                prompt_prefix = ":",
                -- preview = true,
                layout_config = {

                      -- preview_cutoff = 1, -- Preview should always show (unless previewer = false)
                    prompt_position = "bottom",
                    height = 10
                }
            },
            pickers = {
                find_files = {
                },
                buffers = {
                    mappings = {
                        n = {
                            ["<c-d>"] = actions.delete_buffer
                        }
                    },

                },
                lsp_references = {
                }
            }
        }

        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
        vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})

        vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find)
    end
}
