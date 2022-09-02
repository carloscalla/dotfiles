local keymap = vim.keymap.set
keymap("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", {})
keymap("n", "<leader>ht", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", {})
keymap("n", "<leader>hh", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", {})
keymap("n", "<leader>hl", "<cmd>lua require('harpoon.ui').nav_next()<CR>", {})

require('telescope').load_extension('harpoon')
