local keymap = vim.keymap.set
keymap("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", {})
keymap("n", "<leader>ht", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", {})
keymap("n", "<leader>hh", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", {})
keymap("n", "<leader>hl", "<cmd>lua require('harpoon.ui').nav_next()<CR>", {})


require("harpoon").setup({
  menu = {
    -- width = vim.api.nvim_win_get_width(0) - 100,
    -- width = 100,
    width = math.floor(vim.api.nvim_win_get_width(0) * 0.55),
  }
})
