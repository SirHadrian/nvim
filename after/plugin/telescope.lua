local actions = require("telescope.actions")
require("telescope").setup({
        -- You can put your default mappings / updates / etc. in here
        --  All the info you're looking for is in `:help telescope.setup()`

        defaults = {
                -- Default configuration for telescope goes here:
                -- config_key = value,

                prompt_prefix = " ",
                selection_caret = " ",
                path_display = { "smart" },

                mappings = {
                        i = {
                                ["<C-n>"] = actions.cycle_history_next,
                                ["<C-p>"] = actions.cycle_history_prev,

                                ["<C-j>"] = actions.move_selection_next,
                                ["<C-k>"] = actions.move_selection_previous,

                                ["<C-c>"] = actions.close,

                                ["<Down>"] = actions.move_selection_next,
                                ["<Up>"] = actions.move_selection_previous,

                                ["<CR>"] = actions.select_default,
                                ["<C-x>"] = actions.select_horizontal,
                                ["<C-v>"] = actions.select_vertical,
                                ["<C-t>"] = actions.select_tab,

                                ["<C-u>"] = actions.preview_scrolling_up,
                                ["<C-d>"] = actions.preview_scrolling_down,

                                ["<PageUp>"] = actions.results_scrolling_up,
                                ["<PageDown>"] = actions.results_scrolling_down,

                                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                                ["<C-l>"] = actions.complete_tag,
                                ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
                        },

                        n = {
                                ["<esc>"] = actions.close,
                                ["<CR>"] = actions.select_default,
                                ["<C-x>"] = actions.select_horizontal,
                                ["<C-v>"] = actions.select_vertical,
                                ["<C-t>"] = actions.select_tab,

                                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

                                ["j"] = actions.move_selection_next,
                                ["k"] = actions.move_selection_previous,
                                ["H"] = actions.move_to_top,
                                ["M"] = actions.move_to_middle,
                                ["L"] = actions.move_to_bottom,

                                ["<Down>"] = actions.move_selection_next,
                                ["<Up>"] = actions.move_selection_previous,
                                ["gg"] = actions.move_to_top,
                                ["G"] = actions.move_to_bottom,

                                ["<C-u>"] = actions.preview_scrolling_up,
                                ["<C-d>"] = actions.preview_scrolling_down,

                                ["<PageUp>"] = actions.results_scrolling_up,
                                ["<PageDown>"] = actions.results_scrolling_down,

                                ["?"] = actions.which_key,
                        },
                }
        },


        pickers = {

                -- Default configuration for builtin pickers goes here:
                -- picker_name = {
                --   picker_config_ key = value,
                --   ...
                -- }
                -- Now the picker_config_key will be applied every time you call this
                -- builtin picker
        },
        extensions = {
                ["ui-select"] = {
                        require("telescope.themes").get_dropdown(),
                },
        },
})

-- Enable telescope extensions, if they are installed
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

-- See `:help telescope.builtin`
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

-- Slightly advanced example of overriding default behavior and theme
vim.keymap.set("n", "<leader>/", function()
        -- You can pass additional configuration to telescope to change theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                winblend = 10,
                previewer = false,
        }))
end, { desc = "[/] Fuzzily search in current buffer" })

-- Also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
vim.keymap.set("n", "<leader>s/", function()
        builtin.live_grep({
                grep_open_files = true,
                prompt_title = "Live Grep in Open Files",
        })
end, { desc = "[S]earch [/] in Open Files" })

-- Shortcut for searching your neovim configuration files
vim.keymap.set("n", "<leader>sn", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[S]earch [N]eovim files" })
