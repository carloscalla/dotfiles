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
      override_generic_sorter = false, -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

require("telescope").load_extension "file_browser"

-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>fb",
--   ":Telescope file_browser",
--   { noremap = true }
-- )

require('telescope').load_extension('harpoon')
