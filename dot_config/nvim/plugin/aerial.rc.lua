-- require("aerial").setup({
--   on_attach = function(bufnr)
--     -- Toggle the aerial window with <leader>a
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>a', '<cmd>AerialToggle!<CR>', {})

--     -- Jump forwards/backwards with
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '[[', '<cmd>AerialPrev<CR>', {})
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', ']]', '<cmd>AerialNext<CR>', {})

--     -- Jump up the tree with
--     -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>{', '<cmd>AerialPrevUp<CR>', {})
--     -- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>}', '<cmd>AerialNextUp<CR>', {})
--   end
-- })
