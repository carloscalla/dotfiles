require('telescope').setup {
  defaults = {
    prompt_prefix = " ",
    path_display = { truncate = 2 },
    selection_strategy = "reset",
    sorting_strategy = "descending",

    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        preview_width = 0.55,
      }
    }

    -- layout_strategy = "vertical",
    -- layout_config = {
    --   vertical = {
    --     prompt_position = "bottom",
    --     preview_height = 0.55,
    --     mirror = true,
    --   },
    --   width = 0.6,
    --   height = 0.9,
    -- },
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require("telescope").load_extension "file_browser"
require('telescope').load_extension('harpoon')


-- Telescope keymaps
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pf", "<cmd>Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ls", "<cmd>Telescope buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tq", "<cmd>Telescope quickfix<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":Telescope<SPACE>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tr", "<cmd>Telescope lsp_references<CR>", { noremap = true })



-- Telescope
-- Using lua functions
-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- nnoremap <leader>pf <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>ls <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
-- nnoremap <leader>gs <cmd>lua require('telescope.builtin').git_status()<cr>
-- nnoremap <leader>tq <cmd>lua require('telescope.builtin').quickfix()<cr>
-- nnoremap <leader>tc :Telescope<SPACE>
-- nnoremap <leader>fb :Telescope file_browser<cr>
