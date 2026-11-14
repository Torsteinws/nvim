return {
    {
        "esmuellert/codediff.nvim",
        cmd = "CodeDiff",
        opts = {
            diff = {
                compute_moves = true, -- Detect moved code blocks (opt-in, matches VSCode experimental.showMoves)
                compact_context_lines = 5, -- Number of context lines around hunks in compact mode
                compact = true, -- Open diffs in compact mode by default (fold unchanged regions; toggle with gc)
                jump_to_first_change = true, -- Auto-scroll to first change when opening a diff: false to stay at same line
                compact_sync_folds = true, -- Sync fold open/close across panes (mirrors Vim diff mode behavior)
            },

            explorer = {
                view_mode = "tree", -- "list" or "tree"
                line_stats = {
                    enabled = true, -- Fetch and show Git line statistics
                    count_untracked = true, -- Count untracked file lines as insertions
                },
                auto_open_on_cursor = true, -- Rebind j/k/Down/Up in the explorer to also open the file under the cursor
            },
            keymaps = {
                view = {
                    quit = { "q", "<leader>gd" }, -- Close diff tab
                    toggle_explorer = "<leader>b", -- Toggle explorer visibility (explorer mode only)
                    focus_explorer = "<leader>e", -- Focus explorer panel (explorer mode only)
                    -- next_hunk = "]c", -- Jump to next change
                    -- prev_hunk = "[c", -- Jump to previous change
                    -- next_file = "]f", -- Next file in explorer/history mode
                    -- prev_file = "[f", -- Previous file in explorer/history mode
                    -- diff_get = "do", -- Get change from other buffer (like vimdiff)
                    -- diff_put = "dp", -- Put change to other buffer (like vimdiff)
                    -- open_in_prev_tab = "gf", -- Open current buffer in previous tab (or create one before)
                    -- close_on_open_in_prev_tab = false, -- Close codediff tab after gf opens file in previous tab
                    -- toggle_stage = "-", -- Stage/unstage current file (works in explorer and diff buffers)
                    -- toggle_staged_view = "gS", -- Swap between staged/unstaged view of current file (#352)
                    -- stage_hunk = "<leader>hs", -- Stage hunk under cursor to git index
                    -- unstage_hunk = "<leader>hu", -- Unstage hunk under cursor from git index
                    -- discard_hunk = "<leader>hr", -- Discard hunk under cursor (working tree only)
                    -- hunk_textobject = "ih", -- Textobject for hunk (vih to select, yih to yank, etc.)
                    -- show_help = "g?", -- Show floating window with available keymaps
                    -- align_move = "gm", -- Temporarily align moved code blocks across panes
                    -- toggle_layout = "t", -- Toggle between side-by-side and inline layout
                    -- toggle_compact = "gc", -- Toggle compact mode (fold unchanged regions)
                },
            },
        },
    },
}
